## world-map-main

This is **world-map-main** branch to show the a world map where its possible to click on different contries. We are making a container for the part 'world map' of the application.

For Checking the application that if it runs following steps will be helpfull:

In terminal run following code:
1. 'npm install'
2. 'npm run dev'

Which will run the app locally with port 3000.


On other hand  this container can be run from both docker and this branch. To run it for the first time  it requires to go to docker branch and run the following commands:

1. ./create-docker-tools.sh
2. ./start
3. ./stop

This command  creates a 'start' and 'stop' script in every branch to run the part of the application from it's own branch with a docker-settings.json file. 

Important: As this branch is using enviroment variable for the port. So we can choose any port number in the docker-settings file. 

Tech stack:

Backend: Node.js/Express,
Frontend: React with vite
