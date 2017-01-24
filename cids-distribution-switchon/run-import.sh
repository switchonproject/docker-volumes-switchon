#!/bin/bash

docker-compose rm -v -f cids-integration-base
docker-compose rm -v -f cids-distribution-switchon

docker rm -v -f cidsdistributionswitchon_cids-integration-base
docker rm -v -f cidsdistributionswitchon_cids-distribution-switchon

docker volume rm cidsdistributionswitchon_cids-integration-base
docker volume rm cidsdistributionswitchon_cids-distribution-switchon

docker-compose -f docker-compose-import.yml -p cidsdistributionswitchon up -d

docker-compose ps
