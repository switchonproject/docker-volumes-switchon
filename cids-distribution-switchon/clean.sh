#!/bin/bash

docker-compose stop

docker-compose rm -v -f cids-distribution-switchon-cids-integration-base
docker-compose rm -v -f cids-distribution-switchon-cids-server
docker-compose rm -v -f cids-distribution-switchon-cids-server-rest-legacy
docker rm -v -f cids-distribution-switchon-cids-integration-base
docker rm -v -f cids-distribution-switchon-cids-server
docker rm -v -f cids-distribution-switchon-cids-server-rest-legacy

docker volume rm cids-distribution-switchon-cids-integration-base
docker volume rm cids-distribution-switchon-cids-server