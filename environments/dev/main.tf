module "artifact_registry" {
  source        = "../../modules/artifact_registry"
  project_id    = var.project_id
  location      = var.location
  repository_id = var.artifact_registry_name
  description   = "Dev Docker repo"
  format        = var.artifact_registry_format
}

module "cloudfunctions" {
  source                = "../../modules/cloudfunctions"
  project_id            = var.project_id
  region                = var.region
  function_names        = var.function_names
  function_entry_points = var.function_entry_points
  runtime               = var.function_runtime
  source_bucket         = var.functions_source_bucket
  source_object         = var.functions_source_object
  service_account_email = var.cloud_functions_sa
  vpc_connector         = var.vpc_connector
}

# Assign required roles to Cloud Functions Runtime Service Account
resource "google_project_iam_member" "cloud_functions_sa_roles" {
  for_each = toset([
    "roles/artifactregistry.reader",
    "roles/logging.logWriter",
    "roles/monitoring.metricWriter",
    "roles/cloudtrace.agent"
  ])
  project = var.project_id
  role    = each.key
  member  = "serviceAccount:pilotlogai-cloud-api@pilotlogai.iam.gserviceaccount.com"
}

# Example: Assign required roles to Cloud Build Service Account
resource "google_project_iam_member" "cloud_build_sa_roles" {
  for_each = toset([
    "roles/artifactregistry.writer",
    "roles/cloudbuild.builds.builder",
    "roles/storage.objectViewer",
    "roles/cloudfunctions.developer",
    "roles/iam.serviceAccountUser"
  ])
  project = var.project_id
  role    = each.key
  member  = "serviceAccount:cloud-build-sa@pilotlogai.iam.gserviceaccount.com"
} 