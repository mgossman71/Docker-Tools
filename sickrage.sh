#!/bin/bash

docker create --name=sickrage \
-v /docker/sickrage:/config \
-v /mnt/sabnzb/srdownloads:/downloads \
-v /mnt/TV-Shows:/tv \
-v /mnt/TV-Shows1:/tv1 \
-e PGID=0 -e PUID=0  \
-e TZ='America/Chicago' \
-p 8082:8081 \
linuxserver/sickrage:77
