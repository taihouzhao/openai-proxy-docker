FROM node:lts-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install ci

RUN npm install pm2 -g

COPY . .

CMD ["pm2", "start", "app.js", "-i", "max"]