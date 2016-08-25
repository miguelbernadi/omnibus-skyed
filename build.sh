#!/bin/bash -l

BUILD_PATH=/vagrant
RVM_EXEC=/home/vagrant/.rvm/bin/rvm
git config --global user.email "vagrant@devex.com"
git config --global user.name "Vagrant"
source $($RVM_EXEC 2.1.8 do rvm env --path)
cd $BUILD_PATH && gem install bundler && bundle install
$BUILD_PATH/bin/omnibus build skyed

tar cvzf /vagrant/pkg/skyed_0.1.16+$(date +%Y%m%d%H%M%S).tar.gz /tmp/opt/skyed
