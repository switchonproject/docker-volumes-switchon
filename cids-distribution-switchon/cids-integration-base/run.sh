#!/bin/bash

docker stop cidsdistributionswitchon_cids-integration-base

docker rm -v -f cidsdistributionswitchon_cids-integration-base
docker volume rm cidsdistributionswitchon_cids-integration-base

docker run -it -p 5436:5432 --name cidsdistributionswitchon_cids-integration-base \
    -v cidsdistributionswitchon_cids-integration-base:/cidsIntegrationBase/pg_data \
    -v ~/switchon-docker-volumes/cids-distribution-switchon/cids-integration-base/import/:/import/cidsIntegrationBase/ \
    cismet/cids-integration-base:latest \
    start import
