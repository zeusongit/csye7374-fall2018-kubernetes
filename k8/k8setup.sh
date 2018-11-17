#!/bin/bash

export NAME=csye6225-spring2018-aggarwalash.me
export KOPS_STATE_STORE=s3://csye6225-spring2018-aggarwalash.me

kops create cluster \
--zones us-east-1a \
--node-size t2.micro \
--master-size t2.micro \
--node-count 3 \
$NAME --yes
#--node-security-groups sg-0cac0878726527557 \
#--master-security-groups sg-0cac0878726527557 \
#--vpc vpc-ff588a85 \
#--subnets subnet-62d2075c,subnet-9fdf5dc3,subnet-cec549e0,subnet-cf3d46c0,subnet-d3366799,subnet-e829af8f \
