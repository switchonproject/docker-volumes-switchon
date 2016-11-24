#!/bin/bash

docker-compose rm -v -f cids-distribution-switchon-cids-integration-base
docker-compose rm -v -f cids-distribution-switchon-cids-server
docker-compose rm -v -f cids-distribution-switchon-cids-server-rest-legacy
docker rm -v -f cids-distribution-switchon-cids-integration-base_1
docker rm -v -f cids-distribution-switchon-cids-server_1
docker rm -v -f cids-distribution-switchon-cids-server-rest-legacy_1

docker volume rm cids-distribution-switchon-cids-integration-base
docker volume rm cids-distribution-switchon-cids-server

docker-compose up -d
