#!/bin/bash

kustomize build "github.com/sim1/katalog/kube-prometheus/default?ref=master" > upstream-monitoring.yml
