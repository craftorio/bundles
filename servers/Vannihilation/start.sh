#!/usr/bin/env bash
set -x
set -e
cd $(dirname $0);
export MC_PROJECT_NAME=$(basename $(pwd))

export MINECRAFT_AUTH_SERVER_URL=${MINECRAFT_AUTH_SERVER_URL-"https://auth.craftorio.com"}
export CONTAINER_IMAGE=${CONTAINER_IMAGE-"craftorio/docker-server-minecraft:mohist-1.16.5-759"}
export MC_CPU_COUNT=${MC_CPU_COUNT-4}
export MC_INIT_MEMORY=${MC_INIT_MEMORY-2048M}
export MC_MAX_MEMORY=${MC_MAX_MEMORY-8192M}
export MC_PORT=${MC_PORT-25566}

cd ${DIR}/config && rsync -a --exclude-from='exclude.txt' ../../../clients/Vannihilation/config/config/ ./ && cd -
cd ${DIR}/mods && rsync --delete -a --exclude=exclude.txt --exclude-from='exclude.txt' ../../../clients/Vannihilation/mods/ ./ && cd -

mc-docker-run --name "${MC_PROJECT_NAME}" --data "$(pwd)" --port ${MC_PORT}