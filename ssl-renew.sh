#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose --no-ansi"
DOCKER="/usr/bin/docker"

cd /root/container-configs/tm-server
$COMPOSE run certbot renew && $COMPOSE kill -s SIGHUP nginx
$DOCKER system prune -af
