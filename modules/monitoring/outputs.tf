output "notification_channel_id" {
  value = google_monitoring_notification_channel.email.id
}

output "uptime_check_config_name" {
  value = google_monitoring_uptime_check_config.http.name
} 