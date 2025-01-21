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
resource "google_compute_instance" "vm_instance" {
	name = "terraform-instance"
	machine_type = "e2-medium"
	zone = "us-central1-a"
	
	boot_disk{
     	  intitialize_params {
	    image = "debian-cloud/debian-10"
	}
		}
	
    network_interface {
	network = 
	subnetwork = 

	access_config {
	# this section to give the vm an external IP address
		}

	}
	tags = ["web"]
}


