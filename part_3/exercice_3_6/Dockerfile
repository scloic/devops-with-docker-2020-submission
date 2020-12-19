FROM node:alpine as build-stage

COPY frontend-example-docker frontend-example-docker
WORKDIR frontend-example-docker
RUN npm install && chown -R node /frontend-example-docker
RUN npm run build && chown -R node dist

FROM node:alpine

COPY --from=build-stage /frontend-example-docker/dist /dist

RUN npm install -g serve

USER node

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "dist"]
