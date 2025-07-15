output "function_names" {
  value = [for f in google_cloudfunctions2_function.this : f.name]
}

output "function_urls" {
  value = [for f in google_cloudfunctions2_function.this : f.service_config[0].uri]
} 