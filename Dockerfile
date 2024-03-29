FROM node:18.16.0-alpine3.17

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci --omit=dev
CMD ['npm', 'start']