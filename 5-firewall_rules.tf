resource "google_compute_firewall" "allow_access_from_home" {
  project    = var.project
  name       = "allow-access-from-home"
  network    = google_compute_network.vpc_network.name
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["1-65535"]
  }
  allow {
    protocol = "udp"
    ports    = ["1-65535"]
  }
  source_ranges = [var.home_ip]
}
