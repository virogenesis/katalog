#!/bin/bash
set -ex
VERSION=v1.0.0
kustomize build github.com/kubernetes/ingress-nginx/deploy/static/provider/cloud?ref=controller-$VERSION > ingress-nginx.yml
