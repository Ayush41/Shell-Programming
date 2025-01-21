# Main.tf

provider provider "google" { 
project = "your-gcp-project-id" region = "us-central1" 
}

# creating a VPC
resource "google_compute_network" "vpc_network" { name = "terraform-network" }

# Create a Subnetwork resource 
resource "google_compute_subnetwork" "subnetwork" {
	name = "terraform-subnetwork"
	ip_cidr_range = "10.0.0.0/16"
	region = "us-central1"
	network = google_compute_network.vpc_network.name	
	}

# Create a Firewall Rule
resource "google_compute_firewall" "default" {
	name = "allow-https"
	network = google_compute_network.vpc_network.name
	
	allow {
		protocol = "tcp"
		ports = ["80"]
			}
	source_ranges = ["0.0.0.0/0"]	
	}

# Create a Compute Engine Instance






