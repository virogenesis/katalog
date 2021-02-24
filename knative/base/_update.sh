#!/bin/bash
set -ex
VERSION="v0.20.0"
curl -L "https://github.com/knative/operator/releases/download/$VERSION/operator.yaml" > knative-operator.yml
