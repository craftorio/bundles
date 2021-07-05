#!/usr/bin/env bash

pushd `dirname $0` > /dev/null;DIR=`pwd -P`;popd > /dev/null

cd ${DIR}/config && rsync -a --exclude-from='exclude.txt' ../../../clients/Vannihilation/config/config/ ./ && cd -
cd ${DIR}/mods && rsync --delete -a --exclude=exclude.txt --exclude-from='exclude.txt' ../../../clients/Vannihilation/mods/ ./ && cd -

MC_CPU_COUNT=${MC_CPU_COUNT-4} MC_MAX_MEMORY=${MC_MAX_MEMORY-8192M} MC_INIT_MEMORY=${MC_INIT_MEMORY-4096M} mc-docker-run --auth-server-url https://auth.craftorio.com \
--image craftorio/docker-server-minecraft:1.16.5-457-mohist \
--name Vannihilation \
--data "${DIR}" \
--port 25566