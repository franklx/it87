#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi
dkms add -m it87 -v 0.1
dkms mkdeb --source-only -m it87 -v 0.1
mv /var/lib/dkms/it87/0.1/deb/it87-dkms_0.1_all.deb ..
rm -r /var/lib/dkms/it87/
