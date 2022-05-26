# Latest ver. of node alpine 
FROM node:alpine3.14 
#WORKDIR 
#COPY entrypoint.sh /entrypoint.sh
#RUN chmod +x /entrypoint.sh
#ADD . .
#RUN npm install
#ENTRYPOINT ["/entrypoint.sh"]
# npm install express somewhere? 
CMD npm install && npm run dev 



