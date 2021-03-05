#!/usr/bin/env bash

rm -r target/Cascadia
mkdir -p target/Cascadia

pushd target/Cascadia

curl -Ls https://api.github.com/repos/microsoft/cascadia-code/releases/latest | \
    grep -wo "https.*CascadiaCode-.*.zip" | \
    wget -i -

unzip - CascadiaCode-*.zip

popd    