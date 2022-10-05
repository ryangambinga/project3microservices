kubectl delete deploy backend-feed
kubectl delete deploy backend-user
kubectl delete deploy frontend
kubectl delete deploy reverseproxy

kubectl apply -f aws-creds-configmap.yaml
kubectl apply -f reverseproxy.yaml
kubectl apply -f frontend.yaml
kubectl apply -f backend-feed-deployment.yaml
kubectl apply -f backend-user-deployment.yaml