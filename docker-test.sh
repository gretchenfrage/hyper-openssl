#!/usr/bin/env bash

# copy everything that's not git-ignored into docker/repo
rsync -av --filter=':- .gitignore' --exclude 'docker/' . ./docker/repo/

# docker built it and run it
cd docker

export NAME=hyper-openssl-test-thing

docker build --tag $NAME .
docker run -it --rm --name $NAME $NAME:latest
