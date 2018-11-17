#!/bin/bash

export NAME=lozano.k8s.tejasparikh.com
export KOPS_STATE_STORE=s3://lozano.k8s.tejasparikh.com
kops delete cluster --name $NAME --yes