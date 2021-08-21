#!/usr/bin/env bash
set -x
set -e
cd $(dirname $0);
export MC_PROJECT_NAME=$(basename $(pwd))

if docker ps -a | grep "${MC_PROJECT_NAME}"; then
  exec docker exec -it "${MC_PROJECT_NAME}" minecraft screen
else
  echo "Docker container with name '${MC_PROJECT_NAME}' not found"
  exit 1
fi
