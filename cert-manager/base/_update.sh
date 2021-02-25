#!/bin/bash
set -ex

VERSION=v1.2.0
curl -L https://github.com/jetstack/cert-manager/releases/download/$VERSION/cert-manager.yaml > cert-manager.yml
