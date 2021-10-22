gcloud container clusters get-credentials my-cluster --region us-central1

kubectl apply -f deployment.yml
kubectl apply -f horizontal_pa.yml
kubectl apply -f service.yml
