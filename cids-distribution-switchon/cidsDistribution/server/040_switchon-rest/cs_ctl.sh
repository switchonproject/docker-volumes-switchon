#!/bin/bash

# name of the service for impostor, .pid and .out files
SERVICE=SWITCHON-REST-SERVICE
# optional service start options, e.g. @runtime.properties required for cids-server-rest
START_OPTIONS=@runtime.properties

# name of the starter JAR that defines the main class to run
STARTER_JAR=>switchon-server-rest-starter.jar

XMS=128m
XMX=512m
source ${CIDS_DISTRIBUTION_DIR}/utils/_cids_service_ctl.master.sh