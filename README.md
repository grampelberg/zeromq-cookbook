REQUIREMENTS
============

Platform
--------

Currently tested on Ubuntu 10.10. If you get it working on another platform (or
it doesn't work on your platform of choice), open an issue.

Cookbooks
---------

- build-essential

ATTRIBUTES
==========

All attributes are named under the `zeromq` keyspace. The attributes
specified in the cookbook are used to setup the default config file.

* `node[:zeromq][:src_version]` - version of zeromq to install
* `node[:zeromq][:install_dir]` - location to install zeromq to
* `node[:zeromq][:src_mirror]` - full URL to download the source from.

RECIPES
=======

default
-------

Installs zeromq and installs it.

LICENSE AND AUTHOR
==================

Author:: Thomas Rampelberg (<thomas@saunter.org>)

Copyright 2011, Thomas Rampelberg

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


