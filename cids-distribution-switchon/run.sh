#!/bin/bash

docker-compose rm -v -f cidsdistributionswitchon_cids-integration-base
docker rm -v -f cidsdistributionswitchon-cids-integration-base

docker volume rm cidsdistributionswitchon_cids-integration-base

docker-compose up -d
