variable "project_id" {}
variable "location" {}
variable "region" {}
variable "artifact_registry_name" {}
variable "artifact_registry_format" {}
variable "function_names" { type = list(string) }
variable "function_entry_points" { type = map(string) }
variable "function_runtime" {}
variable "functions_source_bucket" {}
variable "functions_source_object" {}
variable "cloud_functions_sa" {}
variable "vpc_connector" { default = "" } 