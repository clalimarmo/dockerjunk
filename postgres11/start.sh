#!/usr/bin/env bash
host_data_dir=/tmp/dockerjunk/postgres11/data
mkdir -p $host_data_dir

docker run \
	--name postgres11 \
	--mount type=bind,source=$host_data_dir,target=$HOME/var/postgres11/data \
	--shm-size=512m \
	-p 5432:5432 \
	-d postgres:11
