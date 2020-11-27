#!/bin/bash

# Clean and create appconfig archive
rm -rf ./kubedirector/appconfig.tgz
cd ./kubedirector && tar czf appconfig.tgz appconfig/ && cd -
mv ./kubedirector/appconfig.tgz .

# Build and push Docker image
docker build -t dzinsouhpe/centos:7.8.2003 .
docker push dzinsouhpe/centos:7.8.2003

docker build -t dzinsouhpe/centos:latest .
docker push dzinsouhpe/centos:latest

# Delete temporary archive
rm -rf ./appconfig.tgz
