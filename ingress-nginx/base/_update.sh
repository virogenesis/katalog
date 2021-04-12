#!/bin/bash
set -ex
VERSION=v0.45.0
kustomize build github.com/kubernetes/ingress-nginx/deploy/static/provider/cloud?ref=controller-$VERSION > ingress-nginx.yml
