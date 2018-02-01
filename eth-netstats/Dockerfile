FROM node:alpine

RUN apk add --update git
RUN git clone https://github.com/cubedro/eth-netstats

WORKDIR /eth-netstats

RUN npm install && npm install -g grunt-cli && grunt

EXPOSE 3000

CMD ["npm", "start"]
