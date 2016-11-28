#!/bin/bash

docker-compose stop

docker-compose rm -v -f cidsdistributionswitchon_cids-integration-base
docker rm -v -f cidsdistributionswitchon_integration-base

docker volume rm cidsdistributionswitchon_cids-integration-base