#!/usr/bin/env bash
set -x
set -e
cd $(dirname $0);
[[ -f .env ]] || { echo "No .env file found, terminating..."; exit 1; }
source .env
MC_PROJECT_NAME=${MC_PROJECT_NAME-$(basename $(pwd))}

cd ${DIR}/config && rsync -a --exclude-from='exclude.txt' ../../../clients/Vannihilation/config/config/ ./ && cd -
cd ${DIR}/mods && rsync --delete -a --exclude=exclude.txt --exclude-from='exclude.txt' ../../../clients/Vannihilation/mods/ ./ && cd -

mc-docker-run --name "${MC_PROJECT_NAME}" --data "${MC_DATA_DIR-$(pwd)}" --port ${MC_PORT} \
--image "${CONTAINER_IMAGE}" \
--auth-server-url "${MINECRAFT_AUTH_SERVER_URL}"