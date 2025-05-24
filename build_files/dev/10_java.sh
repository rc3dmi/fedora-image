#!/bin/bash

set -ouex pipefail

### Install Java packages

dnf5 install -y \
  java-21-openjdk-devel
