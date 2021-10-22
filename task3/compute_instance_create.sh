gcloud compute firewall-rules create my-firewal1 --allow tcp:8080


export PROJECT_ID='amplified-asset-328305'

export VM_NAME='sre-terminal'

export VM_ZONE='us-west4-b'

gcloud compute instances create $VM_NAME --zone=$VM_ZONE --image-project=centos-cloud --image-family=centos-7  --metadata-from-file=startup-script=startup_script_for_VM.sh
