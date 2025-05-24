#!/bin/bash

set -ouex pipefail

### Install Java packages

dnf5 install -y \
  java-17-openjdk-devel
