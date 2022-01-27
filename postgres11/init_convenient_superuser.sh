#!/bin/bash

# create a convenient default superuser; run this after the container is up and running

user=`whoami`
docker exec -it -u postgres postgres11 createuser --superuser --pwprompt $user
docker exec -it postgres11 createdb $user -U $user

echo "localhost:5432:*:$user:yourpasswordhere" >> $HOME/.pgpass
