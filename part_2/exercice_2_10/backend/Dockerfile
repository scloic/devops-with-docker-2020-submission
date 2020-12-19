FROM ubuntu:16.04

COPY backend-example-docker backend-example-docker
WORKDIR backend-example-docker

RUN apt-get update && apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get update && apt-get install -y nodejs
RUN npm install

EXPOSE 8000

CMD ["npm", "start"]
