variable "bucket_name" {
  description = "The name of the GCS bucket."
  type        = string
}

variable "location" {
  description = "The location for the bucket."
  type        = string
}

variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "force_destroy" {
  description = "Whether to force destroy the bucket."
  type        = bool
  default     = false
} 