#!/bin/bash -

if [[ $# -ne 2 ]]; then
	echo "Arguments:"
	echo "- \$1: Url to clone the repository"
	echo "- \$2: Docker image"
	exit;
fi

PROJECT=$1
DOCKER_IMAGE=$2

git clone ${PROJECT} project

cd project

docker login
docker build -t ${DOCKER_IMAGE} .
docker push ${DOCKER_IMAGE}

