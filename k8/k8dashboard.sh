kubectl apply -f templates/create-service-account.yaml
kubectl apply -f templates/cluster-role-binding.yaml

kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml

kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep admin-user | awk '{print $1}')

echo "*************************************"
echo "*************************************"
echo "Go To: http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/overview?namespace=default"
echo "*************************************"
echo "*************************************"

kubectl proxy

