FROM node:alpine

COPY backend-example-docker backend-example-docker

WORKDIR backend-example-docker

RUN npm install && chown -R node /backend-example-docker

USER node

EXPOSE 8000

CMD ["npm", "start"]

