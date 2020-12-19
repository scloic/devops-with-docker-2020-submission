FROM node:alpine

COPY frontend-example-docker frontend-example-docker

WORKDIR frontend-example-docker

RUN npm install && chown -R node /frontend-example-docker

USER node

EXPOSE 5000

CMD ["npm", "start"]

