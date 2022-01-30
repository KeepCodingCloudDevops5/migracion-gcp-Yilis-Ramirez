terraform {
    required_providers{
        google = {
            source = "hashicorp/google"
            version = "4.7.0"

        }
    }
}

provider "google" {
    credentials = file("cred.json")
    project = "migracion-gcp-yilis"
    region = "europe-west3"
    zone = "europe-west3-a"
}

resource "google_compute_network" "vpc_network"{
    name = "practica-network"
}

resource "google_compute_address" "vm_static_ip" {
  name = "practica-static-ip"
}
resource "google_compute_instance" "vm_instance" {
  depends_on = [
    google_compute_address.vm_static_ip
  ]

  name = "practica-vm-instance"
  machine_type = "f1-micro"
  boot_disk {
    initialize_params{
        image = "projects/migracion-gcp-yilis/global/images/image-apache"
    }
  }
  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
      nat_ip = google_compute_address.vm_static_ip.address
    }
  }
}

resource "random_string" "texto" {
    length = 9
    special = false
    upper = false
}

resource "google_storage_bucket" "practica_bucket" {
    name = "practica-bucket-${random_string.texto.result}"
    location = "EUROPE-WEST3"
}
