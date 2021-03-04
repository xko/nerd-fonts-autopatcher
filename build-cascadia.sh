#!/usr/bin/env bash

python3 -m venv .venv
source .venv/bin/activate
python3 -m pip install -r cascadia-code/requirements.txt

echo
echo ".venv created"

echo
echo "Hit enter to build cascadia (Ctrl-C to break)"
read
pushd cascadia-code
python3 ./build.py -W
popd

rm -r target/Cascadia
mkdir -p target/Cascadia
cp cascadia-code/build/ttf/*.ttf target/Cascadia

echo
echo "Note: .venv is still there.. can activate with: source .venv/bin/activate"
