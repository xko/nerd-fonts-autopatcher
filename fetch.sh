#!/usr/bin/env bash

set -x 
set -e

REPO=$1
TARGET=target/$REPO/release
rm -rf $TARGET
mkdir -p $TARGET

pushd $TARGET

curl -Lsf "https://api.github.com/repos/$REPO/releases/latest" > release.json

jq -r '.assets | map(select(.content_type=="application/zip")) | .[].browser_download_url' \
    < release.json \
    | wget -qi -

unzip - *.zip

popd
    