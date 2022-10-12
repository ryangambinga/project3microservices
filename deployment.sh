kubectl delete deploy backend-feed
kubectl delete deploy backend-user
kubectl delete deploy frontend
kubectl delete deploy reverseproxy

kubectl apply -f deployment/reverseproxy.yaml
kubectl apply -f deployment/frontend.yaml
kubectl apply -f deployment/backend-feed-deployment.yaml
kubectl apply -f deployment/backend-user-deployment.yaml

kubectl apply -f deployment/reverseproxy-service.yaml
kubectl apply -f deployment/frontend-service.yaml
kubectl apply -f deployment/backend-feed-service.yaml
kubectl apply -f deployment/backend-user-service.yaml