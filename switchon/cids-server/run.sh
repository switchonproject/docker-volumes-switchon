#!/bin/bash

docker stop switchon_cids-server

docker rm -v -f switchon_cids-server
docker volume rm switchon_cids-server
docker run -d -p 9986:9986 \
    --link switchon_cids-integration-base:cids-integration-base \
    --name switchon_cids-server \
    -e CIDS_ACCOUNT_EXTENSION=Switchon \
    -e LOG4J_HOST=172.17.0.3 \
    -e CIDS_SERVER_STARTER=cids-custom-switchon-server-4.0-starter.jar
    -v switchon_cids-server:/cidsDistribution \
    -v ~/switchon-docker-volumes/switchon/cids-server/import/:/import/cids-server/ \
    cismet/cids-server:latest
