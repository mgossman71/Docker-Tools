#!/bin/sh
docker run -dt --name sonarr --restart=always \
--net=host \
-v /docker/sonarr:/config \
-v /mnt:/mnt \
-e TZ='America/Chicago' \
-e PGID=0 -e PUID=0 \
-p 8989:8989 \
linuxserver/sonarr

