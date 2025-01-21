# Main.tf

provider provider "google" { 
project = "your-gcp-project-id" region = "us-central1" 
}

# creating a VPC
resource "google_compute_network" "vpc_network" { name = "terraform-network" }

# Create a Subnetwork resource 

# Create a Firewall Rule

# Create a Compute Engine Instance


