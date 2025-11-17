#!/bin/bash

project_id = "project-123456"
zone = "us-central1-a"

for i in {1..5}; do
    gcloud compute instances create vm-$1 \
    --zone=$zone \
    --machine-type=e2-medium \
    --image-family=debian-11 \
    --image-project=debian-cloud
    echo "Created VM instance: vm-$1"
done


# To delete the VMs later...

gcloud compute instances delete vm$1 vm-$2 vm-$3 vm-$4 vm-$5 
    --zone=$zone --quiet


# To start All VMs in a PRoject

# Start
gcloud compute instances start $(gcloud compute instances list --format="value(name)") --zone=us-central1-a

# Stop
gcloud compute instances stop $(gcloud compute instances list --format="value(name)") --zone=us-central1-a
