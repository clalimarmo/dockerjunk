# Setup

## Configure host psql

Set the environment variable

`export PGHOST="localhost"`

so psql doesn't try to use unix socket to connect.

## Create databases, users, etc.

    ./start.sh
    docker exec -it postgres9 bash
    # do stuff...

## Convenient default user for `psql` access

    ./init_convenient_superuser.sh
    echo mypassword > ~/.pgpass && chmod 600 ~/.pgpass

## Notes

It seems like Docker for Mac sometimes needs to be restarted to get the
networking from host to work properly, after the container is first created.
