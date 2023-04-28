FROM node:8-alpine

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/

COPY package.json ./
RUN npm install -g
COPY ./ ./
EXPOSE 8081
CMD [ "npm", "run", "development" ]