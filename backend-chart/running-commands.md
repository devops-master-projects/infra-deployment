```bash
kubectl delete secret ghcr-secret

kubectl create secret docker-registry ghcr-secret \
  --docker-server=ghcr.io \
  --docker-username=Anjap0906 \
  --docker-password=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 \
  --docker-email=anjapetkovic92@gmail.com

kubectl get secret ghcr-secret -o jsonpath='{.data.\.dockerconfigjson}' | base64 -d

helm lint backend-chart

helm install identity-service backend-chart

helm list
kubectl get pods
kubectl get svc
kubectl get ingress

kubectl logs -f deployment/identity-service

kubectl port-forward svc/identity-service 8082:8082

minikube tunnel
```