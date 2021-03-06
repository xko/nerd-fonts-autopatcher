#!/usr/bin/env bash

set -x
set -e

REPO="JetBrains/JetBrainsMono"

for f in target/$REPO/release/fonts/ttf/*.ttf
do
    nerd-fonts/font-patcher -wcq --careful -out patched/$REPO $f &>/dev/null
done
