#!/bin/bash

set -ouex pipefail

### Download and unpack Eclipes IDE

ECLIPSE_VER="4.35"
ECLIPSE_REL="2025-03/R"

SRC_FILENAME="eclipse-java-${ECLIPSE_REL//\//-}-linux-gtk-x86_64.tar.gz"

SRC_URL="https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/$ECLIPSE_REL/$SRC_FILENAME&r=1"

curl -s -L -o /tmp/eclipse.tar.gz $SRC_URL

install -d /usr/lib
install -d /usr/bin

tar --no-same-owner -xf /tmp/eclipse.tar.gz -C /tmp
mv /tmp/eclipse /usr/lib/eclipse-java
ln -s /usr/lib/eclipse/eclipse-java /usr/bin/eclipse-java

for i in 16 22 24 32 48 64 128 256 512 1024
do
  install -Dm0644 /usr/lib/eclipse-java/plugins/org.eclipse.platform_${ECLIPSE_VER}*/eclipse$i.png \
    "/usr/share/icons/hicolor/${i}x${i}/apps/eclipse.png"
done
