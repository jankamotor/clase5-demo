FROM node:16.13.1-alpine

WORKDIR /tmp
RUN npm install -g @angular/cli && \
    npm install -g sonar-scanner --save-dev

USER root
