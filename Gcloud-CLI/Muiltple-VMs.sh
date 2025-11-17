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

