#!/bin/bash

set -ex
VERSION=3.2.1
VERSION_VPA=0.3.2

helm repo add fairwinds-stable https://charts.fairwinds.com/stable || true

helm template --no-hooks --include-crds \
    --version=$VERSION_VPA \
    vpa fairwinds-stable/vpa \
    --namespace=goldilocks > vpa.yml

helm template --no-hooks --include-crds \
    --version=$VERSION \
    --create-namespace \
    goldilocks fairwinds-stable/goldilocks \
    --namespace=goldilocks > goldilocks.yml
