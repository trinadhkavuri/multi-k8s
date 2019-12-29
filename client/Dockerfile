#FROM node:alpine as builder
FROM centos:7.7 builder

WORKDIR /app/usr/complex/client
COPY ./package.json ./
RUN npm install 

COPY . . 

RUN npm run build

FROM nginx
EXPOSE 3000
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/usr/complex/client/build /usr/share/nginx/html

