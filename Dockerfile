# Latest ver. of node alpine 
FROM node:alpine3.14 
#WORKDIR 
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
RUN npm install express
#ADD . .
#RUN npm install
#ENTRYPOINT ["/entrypoint.sh"]
# npm install express somewhere? 
CMD npm install && npm run dev 



