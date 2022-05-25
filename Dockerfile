# Latest ver. of node alpine 
FROM node:alpine3.14 

ENV NODE_VERSION 18.2.0

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 

ADD . .

RUN npm install

ENTRYPOINT ["/entrypoint.sh"]

CMD ["npm","run","dev"]



