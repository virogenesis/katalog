#!/bin/bash
set -ex

kustomize build "github.com/prometheus-operator/kube-prometheus?ref=main" > upstream-kube-prometheus.yml
kustomize build "github.com/sim1/kube-metrics-adapter?ref=master" > upstream-kube-metrics-adapter.yml
