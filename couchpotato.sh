#!/bin/sh
docker run -dt --name couchpotato --restart=always \
--net=host \
-v /docker/couchpotato:/config \
-v /mnt:/mnt \
-e TZ='America/Chicago' \
-e PGID=0 -e PUID=0 \
-p 5050:5050 \
linuxserver/couchpotato

