#!/bin/bash

#Make a local temp dir
mkdir adjust
#Clone the sample http app to the temp dir
git clone https://github.com/sawasy/http_server adjust
#docker build the container
docker build -t rubyhttps:latest .
#remove temp dir
rm -fr adjust