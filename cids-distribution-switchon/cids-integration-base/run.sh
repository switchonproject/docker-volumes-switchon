#!/bin/bash

docker stop cidsdistributionswitchon_cids-integration-base

docker rm -v -f cidsdistributionswitchon_cids-integration-base
docker volume rm cidsdistributionswitchon_cids-integration-base
docker run -d -p 5434:5432 --name cidsdistributionswitchon_cids-integration-base -v cidsdistributionswitchon_cids-integration-base:/data/ -v ~/docker-volumes-switchon/cids-distribution-switchon/cids-integration-base/import/:/import/cids-integration-base/ cismet/cids-integration-base:postgres-9.6.1
