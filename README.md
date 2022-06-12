##capital-info-main
This branch is **capital-info-main** with **Nodejs/Express** image.

####Folders/files in this branch
#####Folders
    -**backend**: contains **data.json**, **dbConnect.js**,**index.js**
    -**public/css**: contains **style.css**
    -**src**:contains **App.jsx**, **main.jsx**
#####Files
    -**Dockerfile**: will create Nodejs/Express image which serve your backend and fronend files
    -**index.html**
    -**package-lock.json**
    -**packag.json**
    -**vite.config.js**

#### How does it work with Nodejs image? 
When the container is created (which means you run ./start on either **docker** branch or **app-iframe-no-proxy-main** branch),  the command "npm run dev" is also run and you can check how your React/vite app look :)    