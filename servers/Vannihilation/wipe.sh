#!/usr/bin/env bash

pushd `dirname $0` > /dev/null;DIR=`pwd -P`;popd > /dev/null
cd ${DIR};
docker stop Vannihilation
docker rm Vannihilation

git reset --hard && git clean -fd && git pull
rm -rf worlds/*
