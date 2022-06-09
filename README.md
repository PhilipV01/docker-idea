## app-iframe-no-proxy 
  This branch is **app-iframe-no-proxy** with **Nginx** image.

#### Files in this branch 
  - **Dockerfile**: Will create Nginx image which is necessary as server.
  - **main.js**: Supports functions for all services work together on that page. 
  - **index.html**: Actual iframer file to conbine all three services together without reverse-proxy (Each services are running on local host + PORT)
  - **style.css**: Style sheet for iframer page. 