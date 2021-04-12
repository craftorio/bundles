#!/usr/bin/env bash

pushd `dirname $0` > /dev/null;DIR=`pwd -P`;popd > /dev/null
cd ${DIR};
git reset --hard && git pull

docker stop Vannihilation
docker rm Vannihilation

./run.sh