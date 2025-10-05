# infra-deployment
### Minikube setup
```bash
minikube start --driver=docker aditional config:(--cpus=4 --memory=8192)

minikube status
kubectl cluster-info
kubectl get nodes

minikube addons list

minikube addons enable ingress
minikube addons enable metrics-server
minikube addons enable dashboard
```