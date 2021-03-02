#!/bin/bash

VERSION=v0.21.0  # knative
curl -L "https://github.com/knative-sandbox/net-contour/releases/download/$VERSION/contour.yaml" > contour.yml
