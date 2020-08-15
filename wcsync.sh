#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose --no-ansi"
DOCKER="/usr/bin/docker"

cd /root/tm-server
$COMPOSE run wcsync
$DOCKER system prune -af
