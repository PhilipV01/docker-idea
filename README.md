## app-iframe-no-proxy-main
  This branch is **app-iframe-no-proxy-main** with **Nginx** image.

### Files in this branch 
  - **Dockerfile**: Will create Nginx image which is necessary as server.
  - **main.js**: Supports functions for all services work together on that page. 
  - **index.html**: Actual iframer file to conbine all three services together without reverse-proxy (Each services are running on local host + PORT)
  - **style.css**: Style sheet for iframer page. 
 

### Create container 
On this branch, we can create all containers to run the app without reverse proxy. 
 
  - world-map-main-no-proxy 
  - country-info-main
  - county-info-db-main
  - capital-info-main
  - capital-info-db-main
  - app-iframe-no-proxy-main
 

Just run the command below 
```
$ ./start
```
Make sure remove other containers created on different branch before creating new ones
```
$ ./stop  