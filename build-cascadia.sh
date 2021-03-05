#!/usr/bin/env bash

python3 -m venv .venv
source .venv/bin/activate
python3 -m pip install -r cascadia-code/requirements.txt

echo
echo ".venv created. Building..."
echo
pushd cascadia-code
rm -r build
python3 ./build.py -W -S
popd

rm -r target/Cascadia
mkdir -p target/Cascadia
cp -r cascadia-code/build/ttf target/Cascadia/

echo
echo "Note: .venv is still there.. can activate with: source .venv/bin/activate"
