rem start a container and map a volume
docker run -d -p 9000:80 ^
-v c:/Users/dcasson/projects/docker_preso/html:/usr/share/nginx/html ^
nginx:latest
