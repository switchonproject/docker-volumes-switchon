#!/bin/bash

docker stop cidsdistributionswitchon_cids-distribution-switchon

docker rm -v -f cidsdistributionswitchon_cids-distribution-switchon
docker run -it -p 9986:9986 -p 8890:8890 -p 80:80 \
    --name cidsdistributionswitchon_cids-distribution-switchon \
    --link cidsdistributionswitchon_cids-integration-base:cids-integration-base \
    -e PGPASSWORD=postgres \
    -v ~/switchon-docker-volumes/cids-distribution-switchon/cidsDistribution/server/:/cidsDistribution/server/ \
    -v ~/switchon-docker-volumes/cids-distribution-switchon/cidsDistribution/lib/localSwitchon/:/cidsDistribution/lib/localSwitchon/ \
    -v ~/switchon-docker-volumes/cids-distribution-switchon/cidsDistribution/client/:/cidsDistribution/client/ \
    switchon/cids-distribution-switchon:4.0
    
#    -v ~/git_work/cids-docker-images/cids-distribution/cidsDistribution/cids_ctl.sh:/cidsDistribution/cids_ctl.sh \
#    -v ~/git_work/cids-docker-images/cids-distribution/import/container_ctl.sh:/container_ctl.sh \
#    -v ~/switchon-docker-volumes/cids-distribution-switchon/cidsDistribution/client/:/cidsDistribution/client/ \
#    -v ~/git_work/cids-docker-images/cids-distribution/cidsDistribution/utils/:/cidsDistribution/utils/ \
#    -v ~/switchon-docker-volumes/cids-distribution-switchon/cidsDistribution/gen/:/cidsDistribution/gen/ \
#    -v ~/git_work/docker-images/cids-distribution/cidsDistribution/utils/:/cidsDistribution/utils/ \
    #--link cidsdistributionswitchon_cids-integration-base:cids-integration-base \