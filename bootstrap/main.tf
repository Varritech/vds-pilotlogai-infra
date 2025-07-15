resource "google_project" "project" {
  name       = var.project_name
  project_id = var.project_id
  org_id     = var.org_id
}

resource "google_project_service" "services" {
  for_each = toset(var.api_services)
  project  = google_project.project.project_id
  service  = each.key
  disable_on_destroy = false
}

resource "google_billing_account_iam_member" "billing" {
  billing_account_id = var.billing_account_id
  role               = "roles/billing.user"
  member             = "serviceAccount:${var.bootstrap_service_account}"
}

resource "google_project_billing_info" "billing" {
  project_id         = google_project.project.project_id
  billing_account    = var.billing_account_id
} 