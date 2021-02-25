#!/bin/bash
set -ex
VERSION=v0.0.4
kustomize build github.com/clastix/capsule/config/default?ref=$VERSION > capsule.yml
