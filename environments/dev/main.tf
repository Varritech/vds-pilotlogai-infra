module "artifact_registry" {
  source        = "../../modules/artifact_registry"
  project_id    = var.project_id
  location      = var.location
  repository_id = var.artifact_registry_name
  description   = "Dev Docker repo"
  format        = var.artifact_registry_format
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
  member  = "serviceAccount:395510094695-compute@developer.gserviceaccount.com"
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
  member  = "serviceAccount:395510094695-compute@developer.gserviceaccount.com"
}

resource "google_project_iam_member" "firestore_access" {
  project = var.project_id
  role    = "roles/datastore.user"
  member  = "serviceAccount:${var.cloud_functions_sa}"
} 