# Setup

## Configure host psql

Set the environment variable

`export PGHOST="localhost"`

so psql doesn't try to use unix socket to connect.

## Create databases, users, etc.

    ./start.sh
    docker exec -u postgres -it postgres bash
    # do stuff e.g. createuser me; createdb mine;
