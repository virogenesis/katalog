#!/bin/bash
set -ex

VERSION=v1.5.3
curl -L https://github.com/jetstack/cert-manager/releases/download/$VERSION/cert-manager.yaml > cert-manager.yml
