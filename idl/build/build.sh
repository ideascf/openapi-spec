#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd $(dirname ${BASH_SOURCE[0]})/../.. && pwd)
cd ${ROOT}/idl/build/

docker build --network host  . -t tools-buf:local

mkdir -p ./.make && touch .make/build-buf