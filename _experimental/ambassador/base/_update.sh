#!/bin/bash
set -ex
VERSION=6.5.19

helm repo add datawire https://www.getambassador.io || true

helm template --no-hooks --include-crds \
    --version=$VERSION \
    --namespace ambassador \
    --set test-enabled="false" \
    --set resources.requests.memory="100Mi" \
    --set namespace.name="ambassador" \
    --set resources.requests.cpu="100m" \
    ambassador datawire/ambassador > ambassador.yml
