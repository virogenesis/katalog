#!/bin/bash

kustomize build "github.com/sim1/katalog/kube-prometheus?ref=master" > upstream-monitoring.yml
