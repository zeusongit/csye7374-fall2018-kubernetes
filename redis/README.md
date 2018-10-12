***DIRECTORY STRUCTURE***
- All kubernetes yaml templates are present in the /redis/templates directory
- To make setup easier, just run the `setup.sh` script to automatically provision  all the kube resources with redis server/sentinels

***CONDITIONS TO RUN SETUP SCRIPT***
- Make sure your kubernetes cluster is up and running along with the dashboard
- Refer the link below to verify all steps required to setup kube cluster
	https://csye7374.tejasparikh.com/lectures/04/#setup-kubernetes-cluster-using-kops

***CREATE COMMAND TO SETUP KUBE CLUSTER WITH 1 MASTER AND 3 WORKER NODES***  
	`$ kops create cluster --zones us-east-1a --node-size t2.medium --master-size t2.medium $NAME --yes`
- Note: Modify the instane type as required

***TEARDOWN CREATED RESOURCES***
- Run the `teardown.sh` script to terminate **only** the redis resources on the k8s cluster.
- **This will not terminate the k8s cluster in AWS. To delete the k8s cluster, run the kops delete cluster command as specified in the link above**