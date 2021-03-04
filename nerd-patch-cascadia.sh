#!/usr/bin/env bash

rm -r target/Cascadia-nerd
mkdir -p target/Cascadia-nerd


pushd nerd-fonts

for f in ../cascadia-code/build/ttf/static/*.ttf
do
    echo
    echo Patching $f 
    echo
    ./font-patcher -w -c --careful -out ../target/Cascadia-nerd $f 
done

popd