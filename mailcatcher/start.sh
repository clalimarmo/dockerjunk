#!/usr/bin/env bash
docker run -d -p 1025:1025 -p 1080:80 --name mailcatcher tophfr/mailcatcher
