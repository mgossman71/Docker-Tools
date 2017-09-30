#!/bin/sh

for i in `docker ps |grep -v CONTAINER|awk '{print $1}'`
do
	echo "Stopping $i"
	docker stop $i
	echo "sleeping for 2 seconds."
	sleep 2
	echo "Starting $i"
	docker start $i
done
