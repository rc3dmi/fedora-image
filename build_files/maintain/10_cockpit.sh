#!/bin/bash

set -ouex pipefail

### Install and enable cockpit

dnf5 install -y \
  cockpit

systemctl enable cockpit.socket

### Add cockpit to firewall allow list
firewall-offline-cmd --add-service=cockpit

### Install cockpit apps

dnf5 install -y \
  cockpit-system \
  cockpit-ostree \
  cockpit-podman \
  cockpit-networkmanager \
  cockpit-storaged \
  cockpit-selinux \
  cockpit-sosreport \
  cockpit-files
