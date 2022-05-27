# Latest ver. of node alpine 
FROM node:alpine3.14 
#npm install for all and run build/ start for vite
CMD npm install && npm run build && npm start 



