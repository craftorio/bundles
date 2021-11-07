#!/usr/bin/env bash
set -x
set -e
cd $(dirname $0);
[[ -f .env ]] || { echo "No .env file found, terminating..."; exit 1; }
source .env
MC_PROJECT_NAME=${MC_PROJECT_NAME-$(basename $(pwd))}

cd config && rsync -a --exclude=exclude.txt --exclude-from='exclude.txt' ../../../clients/${MC_PROJECT_NAME}/config/config/ ./; cd -
cd mods && rsync --delete -a --exclude=exclude.txt --exclude-from='exclude.txt' ../../../clients/${MC_PROJECT_NAME}/mods/ ./; cd -
cd worlds/world/datapacks && rsync --delete -a ../../../datapacks ./; cd -
mkdir -p worlds/world/datapacks
cd worlds/world/datapacks && rsync --delete -a ../../../datapacks/ ./; cd -

mc-docker-run --name "${MC_PROJECT_NAME}" --data "${MC_DATA_DIR-$(pwd)}" --port ${MC_PORT} \
--image "${CONTAINER_IMAGE}" \
--max-memory "${MC_MAX_MEMORY}" \
--auth-server-url "${MINECRAFT_AUTH_SERVER_URL}"
