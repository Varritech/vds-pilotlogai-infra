variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "region" {
  description = "The region for Cloud Functions."
  type        = string
}

variable "function_names" {
  description = "List of Cloud Function names to deploy."
  type        = list(string)
}

variable "function_entry_points" {
  description = "Map of function names to entry points."
  type        = map(string)
}

variable "runtime" {
  description = "The runtime for Cloud Functions (e.g., nodejs20)."
  type        = string
}

variable "source_bucket" {
  description = "The GCS bucket containing function source code."
  type        = string
}

variable "source_object" {
  description = "The GCS object (zip file) for the function source."
  type        = string
}

variable "service_account_email" {
  description = "Service account email for Cloud Functions."
  type        = string
}

variable "vpc_connector" {
  description = "VPC connector name (optional)."
  type        = string
  default     = ""
} 