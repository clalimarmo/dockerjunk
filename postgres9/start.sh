#!/usr/bin/env bash
host_data_dir=/tmp/dockerjunk/postgres9/data
mkdir -p $host_data_dir

docker run \
	--name postgres9 \
	--mount type=bind,source=$host_data_dir,target=/var/lib/postgresql/data \
	--shm-size=256 \
	-p 5432:5432 \
	-d postgres:9.6.12
