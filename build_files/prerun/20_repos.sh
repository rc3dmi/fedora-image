#!/bin/bash

set -ouex pipefail

### Install repository packages

dnf5 install -y \
  https://ftp.postgresql.org/pub/pgadmin/pgadmin4/yum/pgadmin4-fedora-repo-2-1.noarch.rpm
