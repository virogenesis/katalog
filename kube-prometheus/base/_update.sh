#!/bin/bash
set -ex
VERSION=release-0.9
kustomize build "github.com/prometheus-operator/kube-prometheus?ref=$VERSION" > upstream-kube-prometheus.yml
kustomize build "github.com/sim1/kube-metrics-adapter?ref=master" > upstream-kube-metrics-adapter.yml
