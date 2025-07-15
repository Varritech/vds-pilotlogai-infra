resource "google_firebase_project" "default" {
  provider   = google-beta
  project    = var.project_id
}

resource "google_firebase_web_app" "default" {
  provider   = google-beta
  project    = var.project_id
  display_name = var.web_app_display_name
  depends_on = [google_firebase_project.default]
} 