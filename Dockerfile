# Latest ver. of node lts debian 
FROM node:lts-bullseye
#npm install for all and run build/ start for vite
CMD npm install && npm run dev



