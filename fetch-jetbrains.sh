#!/usr/bin/env bash

rm -r target/JetBrainsMono
mkdir -p target/JetBrainsMono

pushd target/JetBrainsMono

curl -Ls https://api.github.com/repos/JetBrains/JetBrainsMono/releases/latest | \
    grep -wo "https.*JetBrainsMono-.*.zip" | \
    wget -i -

unzip - JetBrainsMono-*.zip

popd    