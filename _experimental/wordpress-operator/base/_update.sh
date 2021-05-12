#!/bin/bash
set -ex

VERSION=v0.10.2

kustomize build \
    github.com/presslabs/wordpress-operator/config?ref=$VERSION > wordpress-operator-crds.yml

helm template --no-hooks --version=$VERSION --no-hooks \
  wordpress-operator presslabs/wordpress-operator \
  --namespace=wordpress-operator \
  --set resources.requests.memory="64Mi"  > wordpress-operator.yml
