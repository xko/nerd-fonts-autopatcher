#!/usr/bin/env bash

rm -r target/JetBrainsMono-nerd
mkdir -p target/JetBrainsMono-nerd


pushd nerd-fonts

for f in ../JetBrainsMono/fonts/ttf/*.ttf
do
    echo
    echo Patching $f ..
    echo
    ./font-patcher -w -c --careful -out ../target/JetBrainsMono-nerd $f 
done

popd