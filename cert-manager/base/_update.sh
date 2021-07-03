#!/bin/bash
set -ex

VERSION=v1.4.0
curl -L https://github.com/jetstack/cert-manager/releases/download/$VERSION/cert-manager.yaml > cert-manager.yml
