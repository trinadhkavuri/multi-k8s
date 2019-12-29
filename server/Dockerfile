FROM node:alpine

WORKDIR /app/usr/complex/server
COPY ./package.json ./
RUN npm install 

COPY . . 
CMD ["npm", "run", "start"]

