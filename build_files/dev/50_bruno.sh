#!/bin/bash

set -ouex pipefail

### Install Bruno

BRUNO_VER="2.3.0"

SRC_URL="https://github.com/usebruno/bruno/releases/download/v${BRUNO_VER}/bruno_${BRUNO_VER}_x86_64_linux.rpm"

dnf5 install -y \
  $SRC_URL
