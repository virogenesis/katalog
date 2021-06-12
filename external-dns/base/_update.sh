#!/bin/bash
set -ex
VERSION=master
kustomize build github.com/kubernetes-sigs/external-dns/kustomize/?ref=$VERSION > external-dns.yml
