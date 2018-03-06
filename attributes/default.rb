#
# Author:: Thomas Rampelberg <thomas@saunter.org>
# Cookbook Name:: zeromq
# Attributes:: zeromq
#
# Copyright 2010, Thomas Rampelberg
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

default[:zeromq][:src_version] = "2.0.8"
default[:zeromq][:install_dir] = "/opt/zeromq-#{zeromq[:src_version]}"
default[:zeromq][:src_mirror]  = "http://www.zeromq.org/local--files/area:download/zeromq-#{zeromq[:src_version]}.tar.gz"
default[:zeromq][:make_threads] = node['cpu'] ? node['cpu']['total'].to_i : 2
