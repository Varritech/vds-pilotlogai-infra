resource "google_cloudfunctions2_function" "this" {
  for_each = toset(var.function_names)

  name        = each.key
  project     = var.project_id
  location    = var.region
  build_config {
    entry_point = var.function_entry_points[each.key]
    runtime     = var.runtime
    source {
      storage_source {
        bucket = var.source_bucket
        object = var.source_object
      }
    }
  }
  service_config {
    service_account_email = var.service_account_email
    vpc_connector        = var.vpc_connector != "" ? var.vpc_connector : null
  }
} 