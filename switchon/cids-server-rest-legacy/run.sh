#!/bin/bash

docker-stop switchon_cids-server-rest-legacy

docker rm -f switchon_cids-server-rest-legacy
docker run -d -p 8890:8890 \
    --link switchon_cids-server:cids-server \
    --name switchon_cids-server-rest-legacy \
    -e CIDS_ACCOUNT_EXTENSION=Switchon \
    -e LOG4J_HOST=172.17.0.3 \
    --volumes-from="switchon_cids-server" \
    -v ~/switchon-docker-volumes/switchon/cids-server-rest-legacy/import/:/import/cids-server-rest-legacy/ \
    cismet/cids-server-rest-legacy:latest
