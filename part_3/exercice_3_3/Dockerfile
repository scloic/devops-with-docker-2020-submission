FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install git curl -y && \
    curl -sSL https://get.docker.com/ | sh

WORKDIR home

COPY download_build_push.sh download_build_push.sh
# Add credentials to login on my Docker account. The file is ignore in .gitignore.
COPY config.json /root/.docker/config.json

ENTRYPOINT ["./download_build_push.sh"]
