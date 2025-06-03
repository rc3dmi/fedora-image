#!/bin/bash

set -ouex pipefail

### Move all files from /opt to /var/opt

mv /opt/* /var/opt

### Restore opt link

rm /opt
mv /opt.link /opt
