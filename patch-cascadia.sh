#!/usr/bin/env bash

rm -r target/Cascadia.patched
mkdir -p target/Cascadia.patched

for f in target/Cascadia/ttf/static/*.ttf
do
    echo
    echo "Patching $f .."
    nerd-fonts/font-patcher -wcq --careful -out target/Cascadia.patched $f &>/dev/null
    echo ".. done $f"

done
