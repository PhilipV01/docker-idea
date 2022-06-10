Hello developer!

This is a message from your friendly DevOp!

Each branch has own README files and explain the image will be created etc. 
However, you can always come back here to check the details :)  

## Exciting times!
Finally we are moving from a monolith application development model to systems built upon microservices.

This means that we need a new development environment and build system where the teams working in the same main project, but with different services can separate their code and run it on different servers!

For this purpose we have chosen Docker in conjunction with our own setup for automating Docker.

We will start with 
* different teams in teh same main project having the code for their service in specific branches.
* your team can create as many branches you want, but you start with branching out the main branch and call your base branch "main-service-name".
* then you can create dev and feature branches according to the same naming convention (dev-service-name, feature-some-feature-service-name etc).

**Note:** Should we need to separate the code further we might move each service into separate repositories. But we will wait with doing that.

## How to get started!
Checkout the docker branch and run the following command in your terminal:

```
./create-docker-tools.sh
```

This will give you two shell scripts (that are git-ignored and thus available in all branches):

```
# start all Docker containers
./start
```

```
# stop all docker containers
./stop
```

(You will also see a git ignored folder called docker-tools. There is *no need* for you to work in this folder.)

## Teams and Services 
We have 5 different teams working on this world map app.
  - **Docker** : 
    Takes care of docker tools which enable to create all images (containters) 
  - **World-map** : 
    Shows a world map which user can click any county on the map 
  - **Country-info**:
    Shows the information of the selected country
  - **Capital-info**:
    Shows the information of the capital city in the selected country
  - **iframe**:
    Combines world map, country info and captal info all together in the same page by using iframe. 
  - **DevOps**: 
    Creates Dockerfiles for containers for each services so developers can create necessary images for each service. 
    (Build up pipelines for CI/CD for the application)

## Branches 
We have **8 different branches** to run this application. 
As explained in the later section, each branch will have one image and create a container named as same as the branch name.

Here are those branch names and images that will be used. 
#### Docker 
  - **docker** : Everyone create/run and stop docker containers by running ./start or ./stop in the terminal. 
             No container is created from this branch. 
#### World-map
  - **world-map-main**: Uses **Nodejs/express** for both frontend and backend for world map.
  - **world-map-main-no-proxy**: Uses **Nodejs/express** as same as world-map-main but this branch is not using reverse-proxy. 
#### Country-info
  - **country-info-main**: Uses **Php/apache** as server.
  - **country-info-db-main**: Uses **MySQL** as database for handling the information of countries 
#### Capital-info 
  - **capital-info-main**: Uses **Nodejs/express** for backend and frontend with React/Vite
  - **capital-info-db-main**: Uses **MongoDB** image as database for all data of the capital cities.
#### iframe 
  - **app-iframe-main**: Uses **Nginx** as server and serving html file with iframe to combine other three services.  
  - **app-iframe-no-proxy-main**: Uses **Nginx** as same as app-iframe and this is not using reverse=proxy 
  - **iframe-reverseproxy-main**: Uses **Nginx** to set up reverse-proxy. 

As explained earlier, each team can create any branches for development or some features.      


## In your branch

### Create a Dockerfile
Make sure there is: A file named **Dockerfile** which specifies at least:
* a base image (FROM) 
* and a command to run (CMD) when the server starts.

Example:

```
# start with a debian node image
FROM node:16.15-buster

# run necessary start commands
CMD npm install && node index
```

**Important:** - do not specify a WORK DIR. It will be set to where the code for your branch is checked out within Dockers container/named volume systems automatically.

### Create a dockerSettings.json file
The dockerSettings.json should contain info about which branches you want to create containers from (your own one and other branches with services you want to communicate with) and on which port they should be running:

```json
[
  "dev-frontend",
  [
    4001
  ],
  "main-frontend",
  [
    4000
  ]
]
```

**Coming soon:** You will soon be able to add proxy routes for the reverse proxy alongside the port numbers as well!


### Important! Listen to the environment variable PORT when you start your service!

The system sends an environment variable called PORT to your container (each branch runs in a container that you setup by writing a Dockerfile in your branch).

Start your service on this port!

### I don't know how to start my service on a specific port

Since you are in control of your microservice and its technology stack it is up to you investigate how to start in on a particular port, but here are some suggestion for technologies we know are going to be used in this project

#### React using the Vite development server

In your **config.vite.js** file:

```js
export default defineConfig({
  plugins: [react()],
  server: {
    // use process.env.PORT
    // to read the environment variable
    port: process.env.PORT
  }
})
```

#### Node.js/Express

```js
// Where you start your Express server
app.listen(process.env.PORT)
```

#### For database containers etc
Create a separate branch with your Dockerfile (and backup like SQL-dumps etc).

Refer to the documentation about the container you are using (MySQL, MariaDB, MongoDB etc) for how to start the db server on a particular port!

**Important!** If the server/service needs a command line argument rather than an environment variable to set the port it is starting on -  refter to the Docker documentation on how to read environment variables in your Dockerfile and pass them along as comman line arguments in your start CMD!

### Create your container and run app
There's three branches you can create containers with running ./start. 
  - **docker** branch: All containers to run the app both with/ withour reverse-proxy can be created. 
  - **app-iframe-no-proxy-main**: All containers to run the app without reverse-proxy can be created.
  - **iframe-reverseproxy**: All containers to run the app without reverse-proxy can be created.

### Not sure about Reverse-proxy? 
If you're not sure how reverse-proxy works and please work and test with **app-iframe-no-proxy-main**, **world-map-main-no-proxy**. That uses localhost + PORT so you don't have anything worry about to play around.


...............
  Have a nice coding! 
...............
