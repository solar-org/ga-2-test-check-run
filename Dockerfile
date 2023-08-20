FROM node:18-alpine3.17

WORKDIR /usr/app

COPY package*.json /usr/app/

RUN npm install

COPY . .

ENV NODE_ENV=deploy


EXPOSE 3000


CMD [ "npm", "start" ]