#!/bin/bash

docker-compose rm -v -f tomcat-switchon
docker rm -v -f tomcatswitchon_tomcat-switchon
docker-compose -p tomcatswitchon up -d

docker-compose ps