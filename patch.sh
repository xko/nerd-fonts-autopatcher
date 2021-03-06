#!/usr/bin/env bash

set -x 
set -e

REPO=$1

./poll.sh $REPO

mkdir -p patched/$REPO
cp target/$REPO/.version patched/$REPO/.version

[ -n "`git status --porcelain`" ] 

./fetch.sh $REPO

rm -rf patched/$REPO
mkdir -p patched/$REPO
cp target/$REPO/.version patched/$REPO/.version

for f in bin/$REPO/*
do
    [ -x $f ] && $f
done
