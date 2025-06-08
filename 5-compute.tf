# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance


#creating virtual machines for Linux 

# ----linux web server for iowa ----
resource "google_compute_instance" "linux-instance-test1" {
  name         = "tokyo"
  machine_type = var.medium
  zone         = "${var.region_asia}-a"

  tags = ["karen"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.tokyo-01.self_link

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file("./startup1.sh")

}


# ----linux web server for saopaulo ----
resource "google_compute_instance" "linux-instance-test2" {
  name         = "kyoto"
  machine_type = var.medium
  zone         = "${var.region_asia}-b"

  tags = ["brenda"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.tokyo-01.self_link

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file("./startup2.sh")

}

# ----linux web server for iowa and saopaulo ----
resource "google_compute_instance" "linux-instance-test3" {
  name         = "osaka"
  machine_type = var.medium
  zone         = "${var.region_asia}-c"

  tags = ["carol"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.tokyo-01.self_link

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file("./startup3.sh")

}


#------------- code break -----------------------#


# creating virtual machine for windows 

#----- windows server in iowa ----

resource "google_compute_instance" "windows-instance-test1" {
  name         = "iowa"
  machine_type = "n2-standard-4"
  zone         = "${var.region_us}-a"
  tags = ["kayleigh"]

  boot_disk {
    initialize_params {
      image = "windows-cloud/windows-2022"
    }
  }
  

  network_interface {
    subnetwork = google_compute_subnetwork.hqinternal.self_link

    access_config {
      // Ephemeral public IP
    }
  }

}


# ----- windows server in saopaulo ---
resource "google_compute_instance" "windows-instance-test2" {
  name         = "brazil"
  machine_type = "n2-standard-4"
  zone         = "${var.region_brazil}-a"

  tags = ["cooper"]

  boot_disk {
    initialize_params {
      image = "windows-cloud/windows-2022"
    }
  }
  

  network_interface {
    subnetwork = google_compute_subnetwork.saopaulo-01.self_link

    access_config {
      // Ephemeral public IP
    }
  }

}