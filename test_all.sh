#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")"

set -x
./test.sh 37
./test.sh 38
./test.sh 39
./test.sh 310
