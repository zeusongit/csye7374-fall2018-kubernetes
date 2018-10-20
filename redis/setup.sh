#!/bin/bash

kubectl create -f templates/master-replica.yaml
kubectl create -f templates/master-service.yaml
kubectl create -f templates/redis-sentinel-service.yaml
kubectl create -f templates/nodeport-service.yaml
kubectl create -f templates/slave-replica.yaml
kubectl create -f templates/slave-service.yaml
