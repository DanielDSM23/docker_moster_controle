FROM node:14-alpine
WORKDIR /app
COPY package.json package-lock.json /app/ 
RUN npm install --production

WORKDIR /app
COPY . /app

EXPOSE 8080


ENV POSTER_DIR=/posters


CMD ["node", "server.js"]
