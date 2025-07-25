#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# copy system files
rsync -rvK /ctx/sys_files/ /

# run all pre-run scripts
find /ctx/prerun -type f -name "*.sh" | sort | while read -r script
do
  echo "running: $script"
  bash $script
done

# install and configure packages for maintaing systems
find /ctx/maintain -type f -name "*.sh" | sort | while read -r script
do
  echo "running: $script"
  bash $script
done

# install and configure dev
find /ctx/dev -type f -name "*.sh" | sort | while read -r script
do
  echo "running: $script"
  bash $script
done

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
systemctl enable hostname-automap
