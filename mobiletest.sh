#!/bin/bash -e
DOCKERFILE_PATH='Dockerfile'
docker build --tag dockertest --file $DOCKERFILE_PATH .

docker rm $(docker ps -a -f status=exited -q)
docker run --detach --name test dockertest
docker rm -f -v test
