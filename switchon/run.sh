#!/bin/bash

docker-compose rm -f cids-integration-base
docker-compose rm -v -f cids-server
docker-compose rm -v -f cids-server-rest-legacy

# don't delete the volume, it contains the imported dump! 
# use run-import.sh to create a fresh database and volume!
#docker rm -v -f switchon_cids-integration-base
docker rm -v -f switchon_cids-server
docker rm -v -f switchon_cids-server-rest-legacy

docker volume rm switchon_cids-integration-base
docker volume rm switchon_cids-server

docker-compose -p switchon up -d

docker-compose ps
