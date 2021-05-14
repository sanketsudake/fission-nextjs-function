#!/bin/bash
set -euo pipefail

doit() {
  echo "@@@@ $@"
  "$@"
}

BUILDER=nodejs-nextjs-builder:lastest
ENVIRONMENT=nodejs-nextjs-env:latest
doit docker build -t $BUILDER deploy/builder/
doit docker build -t $ENVIRONMENT deploy/environment/

doit kind load docker-image $BUILDER
doit kind load docker-image $ENVIRONMENT

