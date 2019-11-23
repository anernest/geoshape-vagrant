#!/usr/bin/env bash

# exit if anything returns failure

set -e
yum -y update --disablerepo=epel\*
yum -y install epel-release
rpm -Uvh --replacepkgs http://yum.postgresql.org/9.6/redhat/rhel-6-x86_64/pgdg-redhat96-9.6-3.noarch.rpm
yum -y install socat
cd /etc/yum.repos.d/
wget  https://yum.boundlessps.com/geoshape.repo
yum -y install geoshape geoshape-geoserver elasticsearch postgis-postgresql95 rabbitmq-server-3.6.1
geoshape-config init 192.168.99.110 << EOF
admin
admin
EOF
# /var/lib/geonode/rogue_geonode/geoshape/static/img
