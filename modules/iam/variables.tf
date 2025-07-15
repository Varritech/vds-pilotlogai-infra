variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "account_id" {
  description = "The service account ID."
  type        = string
}

variable "display_name" {
  description = "The display name for the service account."
  type        = string
}

variable "roles" {
  description = "List of IAM roles to assign to the service account."
  type        = list(string)
} 