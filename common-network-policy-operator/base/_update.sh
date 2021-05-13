#|/bin/bash
set -ex

VERSION=1.0.2

curl -L \
    https://raw.githubusercontent.com/bells17/common-network-policy-operator/$VERSION/config/deploy.yaml \
> common-network-policy-operator.yaml
