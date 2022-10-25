#!/bin/bash

docker-compose up -d
docker run --rm -v "$(pwd):/sitespeed.io" sitespeedio/sitespeed.io:26.1.0 --graphite.host=host.docker.internal https://www.sitespeed.io/ --slug yourTestName --graphite.addSlugToKey true