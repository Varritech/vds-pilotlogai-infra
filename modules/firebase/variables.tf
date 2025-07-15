variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "web_app_display_name" {
  description = "Display name for the Firebase web app."
  type        = string
  default     = "Web App"
} 