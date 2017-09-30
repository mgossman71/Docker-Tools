#!/bin/sh
docker run -dt --name plex --restart=always \
--net=host \
-v /docker/plex:/config \
-v /mnt:/mnt \
-e TZ='America/Chicago' \
-e PGID=0 -e PUID=0 \
-p 32400:32400 \
linuxserver/plex

