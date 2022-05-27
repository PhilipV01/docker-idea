# Latest ver. of node alpine 
FROM node:alpine3.14 
#WORKDIR 
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
RUN npm install express
COPY . .
#ADD . .
#RUN npm install
#ENTRYPOINT?

CMD npm run dev 



