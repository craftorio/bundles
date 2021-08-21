#!/usr/bin/env bash

cd $(dirname $0);
export MC_PROJECT_NAME=$(basename $(pwd))

docker stop ${MC_PROJECT_NAME}
docker rm ${MC_PROJECT_NAME}

git reset --hard && git clean -fd && git pull

./start.sh