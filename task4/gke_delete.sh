echo "Enter the cluster nameyou would like to delete:"
read NAME

gcloud container clusters delete $NAME
