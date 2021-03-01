#!/bin/bash
set -ex

VERSION=v1.13.0

curl -L "https://projectcontour.io/quickstart/$VERSION/contour.yaml" > contour.yml
