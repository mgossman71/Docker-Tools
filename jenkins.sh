#!/bin/sh

for i in `docker ps -a |grep -i jenkins |awk '{print $1}'`
do
	docker stop $i
    docker rm $i
done

for i in `docker images |grep -i jenkins |awk '{print $3}'`
do
	docker rmi $i
done

docker run -dt --name jenkins --restart=always \
-v /linux-tools/docker/jenkins:/var/jenkins_home \
-e TZ='America/Chicago' \
-e PGID=0 -e PUID=0 \
-p 8081:8080 \
docker.io/jenkins
