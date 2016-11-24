#!/bin/bash

docker stop cids-distribution-switchon-cids-integration-base

docker rm -v -f cids-distribution-switchon-cids-integration-base
docker volume rm cids-distribution-switchon-cids-integration-base
docker run -d -p 5434:5432 --name cids-distribution-switchon-cids-integration-base -v cids-distribution-switchon-cids-integration-base:/data/ -v ~/docker-volumes-switchon/cids-distribution-switchon/cids-integration-base/import/:/import/cids-integration-base/ cismet/cids-integration-base:postgres-9.6.1
