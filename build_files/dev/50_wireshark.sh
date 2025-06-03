#!/bin/bash

set -ouex pipefail

### Install wireshark

dnf5 install -y \
  wireshark
