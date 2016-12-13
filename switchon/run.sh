#!/bin/bash

docker-compose rm -v -f cids-integration-base
docker-compose rm -v -f cids-server
docker-compose rm -v -f cids-server-rest-legacy

docker rm -v -f switchon_cids-integration-base
docker rm -v -f switchon_cids-server
docker rm -v -f switchon_cids-server-rest-legacy

docker volume rm switchon_cids-integration-base
docker volume rm switchon_cids-server

docker-compose -p switchon up -d

docker-compose ps
