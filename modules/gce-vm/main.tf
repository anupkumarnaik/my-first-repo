resource "google_compute_address" "static" {
  name = var.ipv4_add
}

resource "google_compute_instance" "gce-vm" {
  name          = var.instance_name
  machine_type  = var.gce_machine_type
  zone          = var.gce_zone
  labels        = var.gce_labels
  tags          = var.gce_tags
  project       = var.project_id 
  boot_disk {
    initialize_params {
      image = "rhel-cloud/rhel-7"
      type  = "pd-ssd"
      size  = var.disk_size //change here to 100
    }
  }

  // Local SSD disk
  //scratch_disk {
  //  interface = "SCSI"
  //}

  network_interface {
    network = var.vpc_network
    access_config {
      nat_ip = google_compute_address.static.address
    }
  }

  metadata_startup_script = var.startup_scripts
}
