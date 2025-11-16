#!/bin/bash

# Creating a VM and running commands on it


PROJECT_ID="project-123456"
ZONE="us-central1-a"
VM_NAME="my-vm-instance"
Machine_TYPE="e2-medium"
Image_Family="debian-11"
Image_Family_PROJECT="debian-cloud"


gcloud config set project $PROJECT_ID #set project

# Create VM instance
echo "Creating VM instance... ${VM_NAME}"
gcloud compute instances create $VM_NAME \
    --zone=$ZONE \
    --machine-type=$Machine_TYPE \
    --image-family=$Image_Family \
    --image-project=$Image_Family_PROJECT

# Wait for VM to be ready
echo "Waiting for VM to be ready..."
sleep 30

# Run commands on the VM
echo "Running commands on VM"

gcloud compute ssh $VM_NAME --zone $ZONE --command "
    echo "Hello from inside the VM!";
    sudo apt-get update;
    sudo apt-get install -y nginx;
    sudo systemctl start nginx;
    git --version