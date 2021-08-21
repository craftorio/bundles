#!/usr/bin/env bash
set -x
set -e
cd $(dirname $0);
[[ -f .env ]] || { echo "No .env file found, terminating..."; exit 1 }
source .env
MC_PROJECT_NAME=${MC_PROJECT_NAME-$(basename $(pwd))}

if docker ps -a | grep "${MC_PROJECT_NAME}"; then
  exec docker exec -it "${MC_PROJECT_NAME}" minecraft screen
else
  echo "Docker container with name '${MC_PROJECT_NAME}' not found"
  exit 1
fi
