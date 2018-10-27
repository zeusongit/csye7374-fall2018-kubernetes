#!/bin/bash

kubectl apply -f templates/master-replica.yaml
kubectl apply -f templates/redis-sentinel-service.yaml
kubectl apply -f templates/nodeport-service.yaml
kubectl apply -f templates/slave-replica.yaml

echo "Redis deployment done ....... Proceed to webapp deployment"
