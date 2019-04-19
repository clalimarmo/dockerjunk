#!/bin/bash

# create a convenient default superuser; run this after the container is up and running

docker exec -it -u postgres postgres11 createuser --superuser --pwprompt `whoami`
docker exec -it postgres11 createdb -U `whoami`
