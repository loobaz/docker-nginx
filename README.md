Simple docker/nginx image
========================

Simple nginx image based on ubuntu:trusty

You must import the /etc/nginx/sites-enabled directory from the host and redirect HTTP & HTTPS.

`docker run --name nginx-proxy -v /srv/nginx-proxy/sites-enabled/:/etc/nginx/sites-enabled -d -p 80:80 -p 443:443 loobaz/bind`

Image available on DockerHub: https://registry.hub.docker.com/u/loobaz/nginx/