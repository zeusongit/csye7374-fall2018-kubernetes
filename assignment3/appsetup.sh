#!/bin/bash

kubectl apply -f csye-configmap.yaml
kubectl apply -f redis-master.yaml
sh redisconnect.sh
kubectl apply -f csye-app.yaml
kubectl apply -f csye-service.yaml
