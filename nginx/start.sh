#!/usr/bin/env bash
host_data_dir="$HOME/var/postgres11/data"
docker run \
	--name nginx \
	--shm-size=64m \
	-v $(pwd)/conf.d:/etc/nginx/conf.d \
	-p 8090:80 \
	-d nginx:1.23
