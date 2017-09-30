#!/bin/bash

docker run -dt --name=sickbeard \
--restart=always \
-v /docker/sickbeard:/config \
-v /mnt/sabnzb/srdownloads:/downloads \
-v /mnt/TV-Shows:/tv \
-v /mnt/TV-Shows1:/tv1 \
-e PGID=0 -e PUID=0  \
-e TZ='America/Chicago' \
-p 8082:8081 \
linuxserver/sickbeard
