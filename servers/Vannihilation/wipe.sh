#!/usr/bin/env bash
set -x
set -e
cd $(dirname $0);
[[ -f .env ]] || { echo "No .env file found, terminating..."; exit 1; }
source .env
MC_PROJECT_NAME=${MC_PROJECT_NAME-$(basename $(pwd))}

if docker ps -a | grep "${MC_PROJECT_NAME}"; then
  docker stop "${MC_PROJECT_NAME}"
  docker rm "${MC_PROJECT_NAME}"
fi

git reset --hard && git clean -fd && git pull

rm -rf worlds/*

./start.sh
