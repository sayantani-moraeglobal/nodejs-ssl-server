FROM node:alpine

RUN apk add --no-cache nginx

WORKDIR /nodejs-docker-aws-ecs

COPY package.json .
RUN npm install
COPY . .

COPY nginx.conf /etc/nginx/http.d/default.conf

EXPOSE 8080

CMD ["sh", "-c", "node app.js & nginx -g 'daemon off;'"]
