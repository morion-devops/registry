############
# provider #
############
provider "google" {
  credentials = file(".gcp-creds.json")

  project = "prefab-poetry-334607"
  region  = "europe-north1"
  zone    = "europe-north1-a"
}

#############
# variables #
#############
variable "ssh_key_file_name" {
  default = ".gcp_ssh.pub"
}

############
# instance #
############
resource "google_compute_instance" "registry" {
  name         = "registry"
  machine_type = "e2-micro"
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  metadata = {
    ssh-keys = "registry:${file(var.ssh_key_file_name)}"
  }

  labels = {
    service_name = "registry"
    service_role = "master"
  }

  tags = ["https-server"]

  network_interface {
    network = "default"
    access_config {} // for external ip
  }
}