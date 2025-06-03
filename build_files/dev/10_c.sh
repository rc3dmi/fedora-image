#!/bin/bash

set -ouex pipefail

### Install C, C++ and all required libraries

dnf5 install -y \
  gcc \
  gcc-c++ \
  openmpi \
  openmpi-devel
