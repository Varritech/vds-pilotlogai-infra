variable "project_name" {
  description = "The name of the GCP project."
  type        = string
}

variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "org_id" {
  description = "The GCP organization ID."
  type        = string
}

variable "billing_account_id" {
  description = "The GCP billing account ID."
  type        = string
}

variable "api_services" {
  description = "List of APIs to enable."
  type        = list(string)
}

variable "bootstrap_service_account" {
  description = "Service account email for bootstrap operations."
  type        = string
} 