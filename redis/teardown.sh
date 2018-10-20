#!/bin/bash

kubectl delete -f templates/master-replica.yaml
kubectl delete -f templates/master-service.yaml
kubectl delete -f templates/redis-sentinel-service.yaml
kubectl delete -f templates/slave-replica.yaml
kubectl delete -f templates/slave-service.yaml
