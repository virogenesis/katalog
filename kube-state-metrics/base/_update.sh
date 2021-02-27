#!/bin/bash
set -ex
VERSION=v1.9.8
kustomize build github.com/kubernetes/kube-state-metrics?ref=$VERSION > kube-state-metrics.yml
