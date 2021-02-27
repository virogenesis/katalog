#!/bin/bash
set -ex
VERSION=v0.2.0
kustomize build github.com/amaizfinance/redis-operator/deploy?ref=$VERSION > redis-operator.yml

curl -L "https://raw.githubusercontent.com/amaizfinance/redis-operator/master/example/k8s_v1alpha1_redis_cr.yaml" > example-redis.yml
