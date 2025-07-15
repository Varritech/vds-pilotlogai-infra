resource "google_storage_bucket" "default" {
  name     = var.bucket_name
  location = var.location
  project  = var.project_id
  force_destroy = var.force_destroy
} 