#!/bin/bash

# Cloud shell Deployment script for demo web application

PROJECT_ID = "project-123456"
REGION = "us-central1"

# Set project
gcloud config set project $PROJECT_ID

#Enable App Engine API
gcloud services enable appengine.googleapis.com

#create app engine app
gcloud app create --project=$PROJECT_ID --region=$REGION

Deploy the application
cd /Demo-Webapp
gcloud app deploy app.yml --quiet

#Open the deployed application in browser
gcloud app browse

echo "Web application deployed successfully and opened in browser."
