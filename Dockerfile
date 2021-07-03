FROM node:latest

ENV PORT 3000

WORKDIR /usr/src/app
COPY ./app /usr/src

RUN npm install -g nodemon
RUN npm install

ENTRYPOINT ["nodemon", "-L", "/usr/src/app/server.js"]