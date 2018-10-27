#!/bin/bash

kubectl delete -f csye-configmap.yaml
kubectl delete -f redis-master.yaml
kubectl delete -f csye-app.yaml
kubectl delete -f csye-service.yaml
