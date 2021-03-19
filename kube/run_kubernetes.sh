#!/usr/bin/env bash
# This file creates a deployment and a service.
# Also the deployment is updated using rolling-update strategy


# Assumes that image is built via `run_docker.sh`
# Assumes that image is uploaded via `upload_docker.sh`

# Deploy the v1 of the app
kubectl apply -f mydeploy.yml

# Create an external load balancer for the app
kubectl apply -f myservice.yml

# Deploy the v2 of the app using rolling-update strategy
kubectl apply -f rolling.yml
