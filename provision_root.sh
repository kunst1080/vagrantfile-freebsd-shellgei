#!/bin/sh
set -euv

### -------------------- Provisioning by root.
cd


### Install Applications
export ASSUME_ALWAYS_YES=yes
cat /tmp/provision_pkg.list | xargs pkg install


exit
