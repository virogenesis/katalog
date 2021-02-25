#!/bin/bash
set -ex
VERSION="v0.20.0"
curl -L "https://github.com/knative/operator/releases/download/$VERSION/operator.yaml" > operator/knative-operator.yml
curl -L "https://github.com/knative/net-istio/releases/download/$VERSION/net-istio.yaml" > istio/net-istio.yml
curl -L "https://github.com/knative/serving/releases/download/$VERSION/serving-default-domain.yaml" > xip.yml
curl -L "https://github.com/knative/net-certmanager/releases/download/$VERSION/release.yaml" > cert-manager/net-certmanager.yml
curl -L "https://github.com/knative/serving/releases/download/$VERSION/serving-nscert.yaml" > cert-manager/serving-nscert.yml
