provider "google" {
  project = var.project
  region = var.region
  credentials = var.gcp_credentials
}
