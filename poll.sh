#!/usr/bin/env bash

set -x 
set -e

REPO=$1
mkdir -p target/$REPO

pushd target/$REPO

curl -Lsf "https://api.github.com/repos/$REPO/releases/latest" > latest.json
jq --exit-status -re ".tag_name" > .version < latest.json

popd

[ -s target/$REPO/.version ]
