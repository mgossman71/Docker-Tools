#!/bin/sh
docker run -dt --name sabnzb --restart=always \
--net=host \
-v /docker/sabnzb:/config \
-v /mnt:/mnt \
-e TZ='America/Chicago' \
-e PGID=0 -e PUID=0 \
-p 8080:8080 \
linuxserver/sabnzbd

