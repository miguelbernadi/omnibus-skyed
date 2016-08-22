#
# Copyright 2014 Chef Software, Inc.
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

name "xproto"
default_version "7.0.25"

version "7.0.28" do
  source md5: "0b42843b99aee3e4f6a9cc7710143f86"
end

version "7.0.25" do
  source md5: "a47db46cb117805bd6947aa5928a7436"
end

source url: "https://www.x.org/releases/individual/proto/xproto-#{version}.tar.gz"

license "MIT"
license_file "COPYING"
#skip_transitive_dependency_licensing true

relative_path "xproto-#{version}"

build do
  env = with_standard_compiler_flags(with_embedded_path)

  command "./configure" \
          " --prefix=#{install_dir}/embedded", env: env

  make "-j #{workers}", env: env
  make "-j #{workers} install", env: env
end
