kubectl delete deploy backend-feed
kubectl delete deploy backend-user
kubectl delete deploy frontend
kubectl delete deploy reverseproxy

kubectl apply -f aws-creds-configmap.yml
kubectl apply -f env-configmap.yml
kubectl apply -f env-secrets.yml
kubectl apply -f reverseproxy.yml
kubectl apply -f frontend.yml
kubectl apply -f backend-feed.yml
kubectl apply -f backend-user.yml

kubectl apply -f reverseproxy-service.yml
kubectl apply -f frontend-service.yml
kubectl apply -f feed-service.yml
kubectl apply -f user-service.yml