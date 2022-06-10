## iframe-reverseproxy-main branch 
 This branch is **iframe-reverseproxy-main** with **Nginx** image. 
 If you'd like to try what you did and create containers without using reverse proxy, please play around here. 

### Files in this branch
  - **Dockerfile**: Will create Nginx image which we use for setting up reverse proxy.
  - **nginx.conf**: The actual file to set up reverseproxy. 

### Create container 
On this branch, we can create all containers to run the app with reverse proxy. 
  - world-map-main
  - country-info-main
  - county-info-db-main
  - capital-info-main
  - capital-info-db-main
  - app-iframe-main
  - iframe-reverseproxy-main 

Just run the command below 
```
$ ./start
```
Make sure remove other containers created on different branch before creating new ones
```
$ ./stop
```
