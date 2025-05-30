#!/bin/bash

set -ouex pipefail

### Install MySQL Workbench

SRC_URL="https://downloads.mysql.com/archives/get/p/8/file/mysql-workbench-community-8.0.41-1.fc40.x86_64.rpm"

dnf5 install -y \
  $SRC_URL
