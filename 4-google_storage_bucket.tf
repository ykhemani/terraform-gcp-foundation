resource "google_storage_bucket" "s3-bucket" {
  name = "${var.project}-image-bucket"
  location = var.location
  labels = {
    owner = "${var.owner}"
  }
}

