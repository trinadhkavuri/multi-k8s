FROM node:alpine

WORKDIR /app/usr/complex/server
COPY ./package.json ./
RUN npm install 
RUN apk --update add postgresql-client && rm -rf /var/cache/apk/*
ENTRYPOINT [ "psql" ]
COPY . . 
CMD ["npm", "run", "start"]

