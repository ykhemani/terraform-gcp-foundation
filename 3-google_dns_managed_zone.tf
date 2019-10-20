resource "google_dns_managed_zone" "private-zone" {
  name = "${var.project}-private-zone"
  dns_name = var.private_domain
  description = "Private DNS zone"
  labels = {
    owner = "${var.owner}"
  }

  visibility = "private"

  private_visibility_config {
    networks {
      network_url =  "${google_compute_network.vpc_network.self_link}"
    }
  }
}

