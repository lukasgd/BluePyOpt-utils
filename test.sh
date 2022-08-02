#!/usr/bin/env bash

set -euo pipefail

# $1 is the python version

cd "$(dirname "$0")"
set -x
docker build -f docker/Dockerfile_bpo_python$1 -t bluepyopt-$1:base docker
docker run -t --rm -v $(realpath ../BluePyOpt):/root/BluePyOpt bluepyopt-$1:base
