#
# Cookbook Name:: mongrel2
# Recipe:: default
#
# Author:: Thomas Rampelberg (<thomas@saunter.org>)
#
# Copyright 2011, Thomas Rampelberg
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "build-essential"

zeromq_tar_gz = File.join(Chef::Config[:file_cache_path], "/", "zeromq-#{node[:zeromq][:src_version]}.tar.gz")

remote_file zeromq_tar_gz do
  source node[:zeromq][:src_mirror]
end

package "uuid-dev" do
  action :upgrade
end

bash "install zeromq #{node[:zeromq][:src_version]}" do
  cwd Chef::Config[:file_cache_path]
  code <<-EOH
    tar -zxf #{zeromq_tar_gz}
    cd zeromq-#{node[:zeromq][:src_version]} && ./configure --prefix=#{node[:zeromq][:install_dir]} && make && make install
  EOH
  not_if { ::FileTest.exists?("#{node[:zeromq][:install_dir]}/lib/libzmq.so") }
end
