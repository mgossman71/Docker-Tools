#!/bin/bash

docker stop `docker ps -a | grep plex |awk '{print $1}'` 
sleep 3
docker start `docker ps -a | grep plex |awk '{print $1}'` 

