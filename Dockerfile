FROM node:lts-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm pkg delete scripts.prepare
RUN npm ci --omit=dev
COPY . .
CMD [ "node", "lib/index.js" ]
