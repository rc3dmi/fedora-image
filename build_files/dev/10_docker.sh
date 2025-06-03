#!/bin/bash

set -ouex pipefail

### Install Docker

dnf5 install -y \
  docker-ce \
  docker-ce-cli \
  containerd.io \
  docker-buildx-plugin \
  docker-compose-plugin
