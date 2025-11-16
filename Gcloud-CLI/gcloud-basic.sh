#!/bin/bash

echo $HOME  #print home directory path
echo $PATH  #print system path variable
echo $USER  #print current logged in user
echo $SHELL  #print current shell being used
echo $PWD  #print present working directory
echo $GCP_PROJECT  #print current GCP project ID
echo $GCP_REGION  #print current GCP region
echo $GCP_ZONE  #print current GCP zone


#list all GCP projects
gcloud projects list  

# Create multiple GCP buckets

for i in {1..5}; do 
    gcloud storage buckets create gs://my-bucket-$i 
done



