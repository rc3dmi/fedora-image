#!/bin/bash

set -ouex pipefail

### Move all files from real dirs to target dirs

mv /opt/* /var/opt
mv /usr/local/* /var/usrlocal

### Restore links

rm /opt
mv /opt.link /opt

rm /usr/local
mv /usr/local.link /usr/local
