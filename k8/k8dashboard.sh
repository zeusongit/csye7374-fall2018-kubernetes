kubectl apply -f templates/cluster-service-account.yaml
kubectl apply -f templates/cluster-role-binding.yaml
#kubectl apply -f cluster-service-account.yaml

kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep admin-user | awk '{print $1}')
kubectl proxy