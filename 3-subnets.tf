resource "google_compute_subnetwork" "hqinternal" {
  name                     = "hqinternal"
  ip_cidr_range            = var.us_cider_raange
  region                   = var.region_us
  network                  = google_compute_network.main.id
  private_ip_google_access = true

}

resource "google_compute_subnetwork" "tokyo-01" {
  name                     = "tokyo-01"
  ip_cidr_range            = var.asia_cider_range
  region                   = var.region_asia
  network                  = google_compute_network.main.id
  private_ip_google_access = true

}

resource "google_compute_subnetwork" "saopaulo-01" {
  name                     = "saopaulo-01"
  ip_cidr_range            = var.brazil_cider_range
  region                   =  var.region_brazil
  network                  = google_compute_network.main.id
  private_ip_google_access = true



}