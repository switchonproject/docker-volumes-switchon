#!/bin/bash

docker stop switchon_cids-integration-base

docker rm -v -f switchon_cids-integration-base
docker volume rm switchon_cids-integration-base

docker run -it -p 5434:5432 --name switchon_cids-integration-base \
    -v switchon_cids-integration-base:/cidsIntegrationBase/pg_data \
    -v ~/switchon-docker-volumes/switchon/cids-integration-base/import/:/import/cidsIntegrationBase/ \
    cismet/cids-integration-base:postgres-9.6.1-2.0 \
    start import
