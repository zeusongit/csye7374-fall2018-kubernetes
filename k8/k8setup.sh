#!/bin/bash

export NAME=lozano.k8s.tejasparikh.com
export KOPS_STATE_STORE=s3://lozano.k8s.tejasparikh.com
kops create cluster --zones us-east-2a --node-count=3 --node-size t2.micro --master-size t2.micro $NAME
kops update cluster $NAME --yes

