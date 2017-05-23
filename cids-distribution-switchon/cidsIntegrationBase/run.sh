#!/bin/bash

docker stop cidsdistributionswitchon_cids-integration-base

docker rm -f cidsdistributionswitchon_cids-integration-base
# don't delete the volume, it contains the imported dump! 
# use run-import.sh to create a fresh database and volume!
# docker volume rm cidsdistributionswitchon_cids-integration-base

docker run -it -p 5436:5432 \
    --name cidsdistributionswitchon_cids-integration-base \
    --net cidsdistributionswitchon_default \
    -v cidsdistributionswitchon_cids-integration-base:/cidsIntegrationBase/pg_data \
    -v ~/switchon-docker-volumes/cids-distribution-switchon/cidsIntegrationBase/import/:/import/cidsIntegrationBase/ \
    cismet/cids-integration-base:postgres-9.6.1-2.0 \
    start
