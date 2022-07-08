#!/usr/bin/env bash
docker rm -f nginx
docker run \
	--name nginx \
	--shm-size=64m \
	-v $(pwd)/conf.d:/etc/nginx/conf.d \
	-p 8090:80 \
	-d nginx:1.23
