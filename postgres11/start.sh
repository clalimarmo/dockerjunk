#!/usr/bin/env bash
host_data_dir="$HOME/var/postgres11/data"
mkdir -p $host_data_dir

echo "postgres superuser password:"
read -s superpass

echo "#host:port:db:user:password" > $HOME/.pgpass

docker run \
	--name postgres11 \
	--mount type=bind,source=$host_data_dir,target=/var/lib/postgresql/data \
	--shm-size=512m \
	-e "POSTGRES_PASSWORD=$superpass" \
	-p 5432:5432 \
	-d postgres:11
