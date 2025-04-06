# docker_go_air_hot_reload

This repository is for learing porposes.<br/>
It's a minimal out of the box docker sample.<br/>

Files:<br/>
Dockerfile: describes docker instructions<br/>
docker-compose.yaml: Describes startup of container<br/>
main.go: serverside application (simple http server)<br/>

Create a image named "docker_go_air_hot_reload" from the Dockerfile:<br/>
docker build -t docker_go_air_hot_reload . <br/>

Description:<br/>
docker build = default command to build a image<br/>
-t = tag = name for the image<br/>
. = take everything in the build directory (current filepath)<br/>

Run a docker-container based on the previously built image:<br/>
docker run -p 3000:3000 -d --rm -v $(pwd):/app -v /app/tmp --name <br/>
docker_go_air_hot_reload docker_go_air_hot_reload<br/>

Description:<br/>
docker run = default command to run a container<br/>
-p = port = binds port 3000 of the container (left side) to the port 3000 of the host (right side)<br/>
-d = detached mode = does not block console interaction (background task) - remove -d from the command to show air in progress<br/>
--rm = autodelete container after stopping it<br/>
-v $(pwd):/app = mount volume of host with the path relative to the project. Mount folder named app<br/>
-v /app/tmp = mount additional tmp path for temp files between container restarts and cache files<br/>
--name docker_go_air_hot_reload = run container named docker_go_air_hot_reload<br/>
docker_go_air_hot_reload = use the image named docker_go_air_hot_reload<br/>

Automated build and run:<br/>
docker compose up<br/>

Description:<br/>
Uses the docker-compose.yaml file to start one or multiple containers
Add -d to the command to run in detached mode

Visit the application:<br/>
http://localhost:3000 <br/>