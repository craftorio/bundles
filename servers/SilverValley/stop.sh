#!/usr/bin/env bash
set -x
set -e
cd $(dirname $0);
[[ -f .env ]] || { echo "No .env file found, terminating..."; exit 1; }
source .env
MC_PROJECT_NAME=${MC_PROJECT_NAME-$(basename $(pwd))}

if docker ps | grep "${MC_PROJECT_NAME}"; then
  docker exec -it "${MC_PROJECT_NAME}" minecraft stop || {
    echo "Can't stop the server, terminating..."
  }
  docker stop "${MC_PROJECT_NAME}"
fi

if docker ps -a | grep "${MC_PROJECT_NAME}"; then
  docker rm "${MC_PROJECT_NAME}"
fi
