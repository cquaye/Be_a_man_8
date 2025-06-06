# Firewall rules

#---Allow for access to linux vm from iowa---
resource "google_compute_firewall" "kayleigh-allow-http" {
  name    = "kayleigh-to-karen"
  network = google_compute_network.main.name

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }
  target_tags = [ "karen" ]

  source_tags = ["kayleigh"]
}

#----Allow for access to linux vm from saopaulo ---
resource "google_compute_firewall" "cooper-allow-http" {
  name    = "cooper-to-brenda"
  network = google_compute_network.main.name

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }
  target_tags = [ "brenda" ]

  source_tags = ["cooper"]
}


#---Firewall allow access to linux vm from iowa and saopaulo---
resource "google_compute_firewall" "carol-allow-http" {
  name    = "white-girl-threesome"
  network = google_compute_network.main.name

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }
   target_tags = [ "carol" ]

   source_tags = ["kayleigh","cooper"]
}



#---Allow for rdp with both windows VMs ---
resource "google_compute_firewall" "allow-rdp" {
  name    = "kayleigh-and-cooper-rdp"
  network = google_compute_network.main.name

  allow {
    protocol = "tcp"
    ports    = ["3389"]
  }
  target_tags = ["kayleigh","cooper"]

  source_ranges = ["0.0.0.0/0"]
}