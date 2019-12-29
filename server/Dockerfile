#FROM node:alpine
FROM centos:7.7

WORKDIR /app/usr/complex/server
COPY ./package.json ./
RUN npm install 

COPY . . 
CMD ["npm", "run", "start"]

