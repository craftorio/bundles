#!/usr/bin/env bash

pushd `dirname $0` > /dev/null;DIR=`pwd -P`;popd > /dev/null
cd ${DIR};

docker stop Vannihilation
docker rm Vannihilation

./run.sh