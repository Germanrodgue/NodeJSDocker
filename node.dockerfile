
FROM node:latest

ENV NODE_ENV=production 
ENV PORT=3000

WORKDIR   /src

ADD package.json /src/package.json

RUN       npm install 

COPY . /src/app

EXPOSE $PORT

ENTRYPOINT ["npm", "start"]
