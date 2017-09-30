#!/bin/sh

docker run -dt --name plexpy --restart=always -v /docker/plexpy:/config -v /docker/plexpy/plexlogs:/logs:ro -e PGID=0 -e PUID=0 -e TZ='America/Chicago' -p 8182:8181 linuxserver/plexpy
