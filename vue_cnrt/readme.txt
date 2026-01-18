create volume for store .npm
# podman volume create npm_cache     
create container and run background and create sample code in the /workspace
# podman run -d --name vuedev --userns keep-id -p 127.0.0.1:5173:5173 -v $(pwd)/vuetest:/workspace:Z -v npm_cache:/home/devuser/.npm localhost/myvue:latest


