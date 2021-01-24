#!/bin/bash
set -ex

helm repo add grafana https://grafana.github.io/helm-charts || true
helm --name-template=loki --namespace=loki template grafana/loki-stack --values=_values.yml > mandatory.yml
