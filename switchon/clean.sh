#!/bin/bash

docker-compose stop

docker-compose rm -v -f switchon_cids-integration-base
docker rm -v -f switchon_integration-base

docker volume rm switchon_cids-integration-base