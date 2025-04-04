docker_go_air_hot_reload

This repository is for learing porposes.
It's a minimal out of the box docker sample.

Files:
Dockerfile: describes docker instructions
main.go: serverside application (simple http server)

Create a image named "docker_go_air_hot_reload" from the Dockerfile:
docker build -t docker_go_air_hot_reload .

Description:
docker build = default command to build a image
-t = tag = name for the image
. = take everything in the build directory (current filepath)

Run a docker-container based on the previously built image:
docker run -p 3000:3000 -d --rm -v $(pwd):/app -v /app/tmp --name docker_go_air_hot_reload docker_go_air_hot_reload

Description:
docker run = default command to run a container
-p = port = binds port 3000 of the container (left side) to the port 3000 of the host (right side)
-d = detached mode = does not block console interaction (background task) - remove -d from the command to show air in progress
--rm = autodelete container after stopping it
-v $(pwd):/app = mount volume of host with the path relative to the project. Mount folder named app
-v /app/tmp = mount additional tmp path for temp files between container restarts and cache files
--name docker_go_air_hot_reload = run container named docker_go_air_hot_reload
docker_go_air_hot_reload = use the image named docker_go_air_hot_reload

Visit the application:
http://localhost:3000