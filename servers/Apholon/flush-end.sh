#!/usr/bin/env bash
set -x
set -e
cd $(dirname $0);
[[ -f .env ]] || { echo "No .env file found, terminating..."; exit 1; }
./stop.sh
nbted --print worlds/world/level.dat > worlds/world/level.txt
sed -i 's/Byte "DragonKilled" 0/Byte "DragonKilled" 1/g' worlds/world/level.txt
sed -i 's/Byte "PreviouslyKilled" 0/Byte "DragonKilled" 1/g' worlds/world/level.txt
sed -i 's/Byte "LegacyScanPerformed" 1/Byte "DragonKilled" 0/g' worlds/world/level.txt
nbted -r worlds/world/level.txt > worlds/world/level.dat
rm -rf worlds/world/DIM1
