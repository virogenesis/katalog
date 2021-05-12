#!/bin/bash
set -ex

VERSION=v1.1.1
curl -L "https://raw.githubusercontent.com/Kong/kubernetes-ingress-controller/master/deploy/single/all-in-one-dbless.yaml" > kong.yml
