FROM node:alpine

WORKDIR /app/usr/complex/worker
COPY ./package.json ./
RUN npm install 

COPY . . 
CMD ["npm", "run", "start"]

