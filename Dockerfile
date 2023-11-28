FROM node:alpine

WORKDIR /app
COPY ./package*.json ./

RUN npm i

COPY index.html vite.config.ts ./
COPY public public
COPY src src

CMD npm run dev
