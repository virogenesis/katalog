#!/bin/bash
set -ex
VERSION=1.9.0
ARCH=x86_64
#ARCH=arm64

DIR=$(pwd)
TMPDIR=$(mktemp -d)
cd $TMPDIR
curl -L https://istio.io/downloadIstio | ISTIO_VERSION=$VERSION TARGET_ARCH=$ARCH sh -
cd istio-$VERSION

helm template --no-hooks istio-operator manifests/charts/istio-operator \
  --set operatorNamespace="istio-operator" \
  --set watchedNamespaces="istio-system" \
  --set enableCRDTemplates="true" > $DIR/istio-operator.yml

rm -rf "$TMPDIR/istio-$VERSION/"
