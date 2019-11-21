#!/bin/bash
vagrant up --provision
rm -f package.box
vagrant package
vagrant box add file://package.box --force --name "vagrant-geoshape"
