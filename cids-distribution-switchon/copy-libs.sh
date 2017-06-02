#!/bin/bash

# copies the maven repositiory and the external (signed!) libs to the
# cids-distribution-cache image folder.

# rm -rf ~/git_work/cids-docker-images/cids-distribution-cache/cidsDistribution/lib/m2
# rm -rf ~/git_work/cids-docker-images/cids-distribution-cache/cidsDistribution/lib/ext

docker cp cidsdistributionswitchon_cids-distribution-switchon:/cidsDistribution/lib/m2 ~/git_work/cids-docker-images/cids-distribution-cache/cidsDistribution/lib/
docker cp cidsdistributionswitchon_cids-distribution-switchon:/cidsDistribution/lib/ext ~/git_work/cids-docker-images/cids-distribution-cache/cidsDistribution/lib/