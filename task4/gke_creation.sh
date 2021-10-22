
echo "Enter the name of the cluster you want to create."
read NAME

export PROJECT_ID='amplified-asset-328305'
export ZONE='us-central1-a'

gcloud config set project $PROJECT_ID
gcloud config set compute/zone $ZONE
gcloud container clusters create $NAME --num-nodes=2
gcloud container clusters get-credentials $NAME
kubectl apply -f deployment.yml
kubectl apply -f horizontal_pa.yml
kubectl apply -f services.yml
