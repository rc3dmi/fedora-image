#!/bin/bash

set -ouex pipefail

### Move /opt link

mv /opt /opt.link
mkdir /opt

### Move /usr/local link

mv /usr/local /usr/local.link
mkdir /usr/local
