#!/bin/bash
set -ex
VERSION=2.9.4
LINKERD=$(mktemp)
wget -O $LINKERD \
    https://github.com/linkerd/linkerd2/releases/download/stable-$VERSION/linkerd2-cli-stable-$VERSION-linux-amd64
chmod +x $LINKERD
$LINKERD install > linkerd.yml

rm $LINKERD
