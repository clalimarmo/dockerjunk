#!/usr/bin/env bash
docker run -d -p 1025:25 -p 1080:80 --name mailcatcher tophfr/mailcatcher
