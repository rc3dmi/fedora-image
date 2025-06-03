#!/bin/bash

set -ouex pipefail

### Move /opt link and create /opt

mv /opt /opt.link
mkdir /opt
