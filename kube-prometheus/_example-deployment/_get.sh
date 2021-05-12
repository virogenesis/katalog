#!/bin/bash
set -ex
# curl -L https://github.com/sim1/katalog/raw/master/kube-prometheus/_example-deployment/_get.sh | bash

BASE_URL="https://github.com/sim1/katalog/raw/master/kube-prometheus/_example-deployment/"
FILES="_update.sh kustomization.yml kustomizeconfig.yml kube-prometheus.env"

for F in $FILES; do
curl -Lo $F $BASE_URL/$F
done
