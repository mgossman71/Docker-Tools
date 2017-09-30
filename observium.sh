#!/bin/bash
mkdir -p /docker/observium/config
mkdir -p /docker/observium/logs
mkdir -p /docker/observium/rrd

docker run -dt \
--name observium \
--restart=always \
-v /docker/observium/config:/config \
-v /docker/observium/logs:/opt/observium/logs \
-v /docker/observium/rrd:/opt/observium/rrd \
-p 8668:8668 \
zuhkov/observium
