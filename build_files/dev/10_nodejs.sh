#!/bin/bash

set -ouex pipefail

### Install Node.js from Fedora repos

dnf5 install -y \
  nodejs
