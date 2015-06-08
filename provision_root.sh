#!/bin/sh
set -euv

### -------------------- Provisioning by root.
cd


### Set timezone
cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime


### Install Applications
export ASSUME_ALWAYS_YES=yes
cat /tmp/provision_pkg.list | xargs pkg install


### python
ln -s /usr/local/bin/python2.7 /usr/local/bin/python


### sshd Setting
echo UseDNS no >> /etc/ssh/sshd_config
service sshd restart


### jman
cat <<EOS >> /etc/manpath.config
MANPATH_MAP     /bin            /usr/local/man/ja
MANPATH_MAP     /usr/bin        /usr/local/man/ja
EOS


exit
