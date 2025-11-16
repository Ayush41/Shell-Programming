# 🚀 gcloud CLI — Command Cheat Sheet

Quick reference for all major Google Cloud operations using `gcloud`.

---

# 🔧 Configuration Commands
```bash
gcloud init
gcloud config list
gcloud config set project <PROJECT_ID>
gcloud config set compute/region <REGION>
gcloud config set compute/zone <ZONE>
```

# 👤 Authentication
```bash
gcloud auth login
gcloud auth list
gcloud auth activate-service-account --key-file key.json
```

# 💻 Compute Engine (VMs)
```bash
gcloud compute instances list
gcloud compute instances create myvm --zone us-central1-a
gcloud compute ssh myvm --zone us-central1-a
gcloud compute instances stop myvm
gcloud compute instances delete myvm
```

## Disk and Snapshots
```bash
gcloud compute disks list
gcloud compute snapshots create snap1 --source-disk=disk1
```

# 🌐 Networking

```bash
gcloud compute networks list
gcloud compute networks create myvpc --subnet-mode=custom
gcloud compute firewall-rules create allow-http --allow tcp:80
```

# 📦 Cloud Storage (Buckets)

```bash
gcloud storage buckets list
gcloud storage buckets create gs://my-bucket
gcloud storage cp file.txt gs://my-bucket/
gcloud storage cp gs://my-bucket/file.txt .

```


# 🔐 IAM & Security
```bash
gcloud projects get-iam-policy <PROJECT_ID>
gcloud projects add-iam-policy-binding <PROJECT_ID> \
  --member=user:email@example.com \
  --role=roles/storage.admin

gcloud iam service-accounts create my-sa

```


# 🗄️ Cloud SQL
```bash
gcloud sql instances create mydb
gcloud sql instances list
gcloud sql users create user1 --instance=mydb

```

# 🪄 Cloud Functions
```bash
gcloud functions deploy myfunc --runtime python311 --trigger-http
gcloud functions list

```

# 🏃 Cloud Run
```bash
gcloud run deploy myservice --source .
gcloud run services list

```

# 📬 Pub/Sub
```bash
gcloud pubsub topics create mytopic
gcloud pubsub subscriptions create mysub --topic=mytopic

```

# ☸️ Kubernetes (GKE)
```bash
gcloud container clusters create mycluster
gcloud container clusters get-credentials mycluster
kubectl get nodes
```

# 📈 Logging & Monitoring
```bash
gcloud logging read "resource.type=gce_instance" --limit=20
gcloud monitoring channels list

```

# 📦 Cloud Build / CI-CD
```bash
gcloud builds submit --tag gcr.io/$PROJECT_ID/app
```