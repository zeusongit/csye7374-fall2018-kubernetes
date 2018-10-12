#!/bin/bash

kubectl create -f templates/nodeport-service.yaml
kubectl create -f templates/redis-sentinel-service.yaml
kubectl create -f templates/redis-master.yaml
kubectl create -f templates/redis-controller.yaml
kubectl create -f templates/redis-sentinel-controller.yaml
