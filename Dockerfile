FROM 676836837329.dkr.ecr.us-east-1.amazonaws.com/node:16-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5000

CMD [ "node", "index.js" ]