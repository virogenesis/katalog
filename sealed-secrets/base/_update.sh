#!/bin/bash
set -ex
VERSION=v0.15.0
curl -L "https://github.com/bitnami-labs/sealed-secrets/releases/download/$VERSION/controller.yaml" > sealed-secrets.yml

# wget https://github.com/bitnami-labs/sealed-secrets/releases/download/$VERSION/kubeseal-linux-amd64 -O kubeseal
