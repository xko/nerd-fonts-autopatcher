#!/usr/bin/env bash

set -x
set -e

REPO="microsoft/cascadia-code"

for f in target/$REPO/release/ttf/static/*.ttf
do
    nerd-fonts/font-patcher -wcq --careful -out patched/$REPO $f &>/dev/null
done
