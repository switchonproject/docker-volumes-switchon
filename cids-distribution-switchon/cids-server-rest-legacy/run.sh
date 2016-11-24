#!/bin/bash

docker-stop cids-distribution-switchon-cids-server-rest-legacy

docker rm -f cids-distribution-switchon-cids-server-rest-legacy
docker run -d -p 8890:8890 --link cids-distribution-switchon-cids-server:cids-server --name cids-distribution-switchon-cids-server-rest-legacy -e CIDS_ACCOUNT_EXTENSION=SWITCH-ON -e LOG4J_HOST=172.17.0.3 --volumes-from="cids-distribution-switchon-cids-server" -v ~/docker-volumes-switchon/cids-distribution-switchon/cids-server-rest-legacy/import/:/import/cids-server-rest-legacy/ cismet/cids-server-rest-legacy:latest
