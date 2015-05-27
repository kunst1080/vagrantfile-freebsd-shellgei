#!/bin/sh
set -euv

### -------------------- Provisioning by root.
cd


### Install Applications
export ASSUME_ALWAYS_YES=yes
cat /tmp/provision_pkg.list | xargs pkg install


### python
ln -s /usr/local/bin/python2.7 /usr/local/bin/python


### sshd Setting
echo UseDNS no >> /etc/ssh/sshd_config
service sshd restart


exit
