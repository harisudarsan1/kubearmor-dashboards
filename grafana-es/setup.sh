kubectl apply -f ./relay-deployment.yaml
kubectl apply -f ./es-sts.yaml
kubectl apply -f ./es-svc.yaml


helm install grafana grafana/grafana --namespace=kubearmor
