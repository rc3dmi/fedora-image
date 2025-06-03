#!/bin/bash

set -ouex pipefail

### Install postgres packages

dnf5 install -y \
  pgmodeler \
  pgadmin4-desktop
