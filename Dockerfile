FROM node:12.7-alpine AS build
WORKDIR /app
COPY / ./
COPY package*.json ./

RUN npm install -g @angular/cli@10.0.4 && \
    npm install && \
    ng build
COPY . .
