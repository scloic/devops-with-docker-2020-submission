FROM ubuntu:16.04

COPY backend-example-docker backend-example-docker

WORKDIR backend-example-docker

RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get update && apt-get install -y nodejs && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    npm install

RUN useradd -m backend_user

RUN chown -R backend_user /backend-example-docker

USER backend_user

EXPOSE 8000

CMD ["npm", "start"]
