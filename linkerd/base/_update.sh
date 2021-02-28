#!/bin/bash
set -ex
VERSION=2.9.4

helm repo add linkerd https://helm.linkerd.io/stable || true

helm template linkerd/linkerd2 \
  --version=$VERSION
  --set global.identityTrustAnchorsPEM="--" \
  --set identity.issuer.tls.crtPEM="" \
  --set identity.issuer.tls.keyPEM="" \
  --set identity.issuer.crtExpiry="" \
  linkerd > linkerd.yml

exit 0

STEP_CLI_VERSION=v0.15.7
TMPFILE=$(mktemp)
wget "https://github.com/smallstep/cli/releases/download/${STEP_CLI_VERSION}/step-cli_${STEP_CLI_VERSION}_amd64.deb" -O $TMPFILE
dpkg -i $TMPFILE
rm $TMPFILE

step certificate create \ 
    identity.linkerd.cluster.local \
    issuer.crt issuer.key \
    --profile intermediate-ca \
    --not-after 8760h \
    --no-password \
    --insecure \
    --ca ca.crt \
    --ca-key ca.key
