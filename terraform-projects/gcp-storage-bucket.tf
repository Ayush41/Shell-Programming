provider "google" {
  credentials = file("/path/to/your/credentials.json") #changed
  project     = "adorachat981"
  region      = "us-central1"
}

resource "google_storage_bucket" "my_bucket" {
  name     = "my-unique-bucket-name"
  location = "US"
}


