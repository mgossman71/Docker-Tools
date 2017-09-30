#!/bin/bash

docker run -dt \
--name="headphones" \
--restart=always \
-v /docker/headphones:/config \
-v /mnt/sabnzb/complete:/downloads \
-v /mnt/sabnzb/music:/music \
-e PGID=0 -e PUID=0 \
-e TZ='America/Chicago' \
-p 8181:8181 \
linuxserver/headphones
