#!/bin/bash

export NAME=csye6225-spring2018-aggarwalash.me
export KOPS_STATE_STORE=s3://csye6225-spring2018-aggarwalash.me

kops delete cluster --name $NAME --yes