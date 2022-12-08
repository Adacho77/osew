#!/usr/bin/env bash

set -eu

# where this .sh file lives
DIRNAME=$(dirname "$0")
SCRIPT_DIR=$(cd "$DIRNAME" || exit; pwd)
cd "$SCRIPT_DIR" || exit

BUILD_TIME=$(date '+%F-%H%M')

DEFAULT_OUTPUT_CONTAINER="ghcr.io/potassium-os/lbmk-build-env"

OUTPUT_CONTAINER="${OUTPUT_CONTAINER:-$DEFAULT_OUTPUT_CONTAINER}"
OUTPUT_TAG="${OUTPUT_TAG:-$BUILD_TIME}"

# build container for amd64 and arm64
time buildah build \
  --platform="linux/arm64,linux/amd64" \
  --manifest "${OUTPUT_CONTAINER}:${OUTPUT_TAG}" \
  .

echo "containers have been built"
echo "to push them:"
echo "podman manifest push --all ${OUTPUT_CONTAINER}:${OUTPUT_TAG} docker://${OUTPUT_CONTAINER}:${OUTPUT_TAG}"
