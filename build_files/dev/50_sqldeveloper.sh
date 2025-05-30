#!/bin/bash

set -ouex pipefail

### Install Oracle SQL Developer

SRC_URL="https://download.oracle.com/otn_software/java/sqldeveloper/sqldeveloper-24.3.1-347.1826.noarch.rpm"

dnf5 install -y \
  $SRC_URL
