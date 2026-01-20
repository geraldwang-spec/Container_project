create volume for store .npm
# podman volume create npm_cache     

build new container image
# podman build -t myvue .

create container and run background and create sample code in the /workspace
# podman run -d --name vuedev --userns keep-id -p 127.0.0.1:5173:5173 -v $(pwd)/vuetest:/workspace:Z -v npm_cache:/home/devuser/.npm localhost/myvue:latest

enter container
# podman exec -it vuedev bash

launch vue 
# cd /workspace/sample
# npx vite --host 0.0.0.0
