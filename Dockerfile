FROM node:alpine

WORKDIR /nodejs-docker-aws-ecs

COPY package.json .

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node", "app.js" ]
