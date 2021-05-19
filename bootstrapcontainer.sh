#!/bin/bash

#Make a local temp dir
mkdir adjust
#Clone the sample http app to the temp dir
git clone https://github.com/sawasy/http_server adjust
#docker build the container
docker build -t jakshaym/rubyhttps:latest .
#remove temp dir
rm -fr adjust
#push the container to registry username password from env variables for security
docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
docker push jakshaym/rubyhttps:latest

#Deploying the HELM CHART TO THE MINIKUBE CLUSTER
helm install rubyhttps-chart .\rubyhttps\ --values .\rubyhttps\values.yaml