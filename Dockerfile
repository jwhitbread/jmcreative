FROM nginx:alpine

RUN apk add --update nodejs npm

COPY ./app /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/

WORKDIR /usr/share/nginx/html

RUN npm install

RUN npm run compile:scss

