FROM ubuntu:20.04

RUN apt-get update && apt-get install -y curl xz-utils

RUN curl -o /tmp/node.tar.xz https://nodejs.org/dist/v20.9.0/node-v20.9.0-linux-x64.tar.xz

RUN tar -xJf /tmp/node.tar.xz -C /usr/local --strip-components=1 && \
    rm /tmp/node.tar.xz

RUN npm install -g @angular/cli
WORKDIR /app