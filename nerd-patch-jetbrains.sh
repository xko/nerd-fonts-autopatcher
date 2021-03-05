#!/usr/bin/env bash

rm -r target/JetBrainsMono.patched
mkdir -p target/JetBrainsMono.patched



for f in target/JetBrainsMono/fonts/ttf/*.ttf
do
    echo
    echo Patching $f ..
    echo
    nerd-fonts/font-patcher -wcq --careful -out target/JetBrainsMono.patched $f 
done
