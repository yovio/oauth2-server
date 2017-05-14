
FROM node:alpine
MAINTAINER Yovi Oktofianus <yovio@hotmail.com>
LABEL Name=oauth2-server Version=0.0.1

COPY ./src/package.json /tmp/package.json
RUN cd /tmp && npm install --production
RUN mkdir -p /usr/src/app && mv /tmp/node_modules /usr/src
WORKDIR /usr/src/app
COPY ./src /usr/src/app
EXPOSE 3000
CMD npm start