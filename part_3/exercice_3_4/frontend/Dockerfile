
FROM ubuntu:16.04 

COPY frontend-example-docker frontend-example-docker

WORKDIR frontend-example-docker

RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get update && apt-get install -y nodejs && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    npm install

RUN useradd -m frontend_user

RUN chown -R frontend_user /frontend-example-docker

USER frontend_user

EXPOSE 5000

CMD ["npm", "start"]
