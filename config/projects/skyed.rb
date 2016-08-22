#
# Copyright 2016 YOUR NAME
#
# All Rights Reserved.
#

name "skyed"
maintainer "Miguel Bernabeu <itmatters@devex.com"
homepage "https://github.com/poka-yoke/skyed"

# Defaults to C:/skyed on Windows
# and /opt/skyed on all other platforms
install_dir "#{default_root}/#{name}"

build_version Omnibus::BuildVersion.semver
build_iteration 1

# Creates required build directories
dependency "preparation"

# skyed dependencies/components
dependency "skyed"

# Version manifest file
dependency "version-manifest"

exclude "**/.git"
exclude "**/bundler/git"
