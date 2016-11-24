#!/bin/bash

docker stop cids-distribution-switchon-cids-server

docker rm -v -f cids-distribution-switchon-cids-server
docker volume rm cids-distribution-switchon-cids-server
docker run -d -p 9986:9986 --link cids-distribution-switchon-cids-integration-base:cids-integration-base --name cids-distribution-switchon-cids-server -e CIDS_ACCOUNT_EXTENSION=SWITCH-ON -e LOG4J_HOST=172.17.0.3 -v cids-distribution-switchon-cids-server:/data -v ~/docker-volumes-switchon/cids-distribution-switchon/cids-server/import/:/import/cids-server/ cismet/cids-server:latest
