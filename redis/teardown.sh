#!/bin/bash

kubectl delete -f templates/nodeport-service.yaml
kubectl delete -f templates/redis-sentinel-service.yaml
kubectl delete -f templates/redis-master.yaml
kubectl delete -f templates/redis-controller.yaml
kubectl delete -f templates/redis-sentinel-controller.yaml
