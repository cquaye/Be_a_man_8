resource "google_compute_subnetwork" "hqinternal" {
  name                     = "hqinternal"
  ip_cidr_range            = "10.69.10.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true

}

resource "google_compute_subnetwork" "tokyo-01" {
  name                     = "tokyo-01"
  ip_cidr_range            = "10.69.50.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true

}

resource "google_compute_subnetwork" "saopaulo-01" {
  name                     = "saopaulo-01"
  ip_cidr_range            = "10.69.30.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true



}