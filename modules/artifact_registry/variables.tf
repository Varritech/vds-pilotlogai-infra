variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "location" {
  description = "The location for the Artifact Registry repository."
  type        = string
}

variable "repository_id" {
  description = "The name of the Artifact Registry repository."
  type        = string
}

variable "description" {
  description = "Description for the repository."
  type        = string
  default     = ""
}

variable "format" {
  description = "The format of the repository (e.g., docker, npm)."
  type        = string
} 