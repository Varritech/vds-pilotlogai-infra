resource "google_monitoring_notification_channel" "email" {
  display_name = "Email Notification"
  type         = "email"
  labels = {
    email_address = var.alert_email
  }
}

resource "google_monitoring_uptime_check_config" "http" {
  display_name = var.uptime_check_display_name
  timeout      = "10s"
  period       = "60s"
  monitored_resource {
    type = "uptime_url"
    labels = {
      host = var.uptime_check_host
    }
  }
  http_check {
    path = "/"
    port = 443
    use_ssl = true
  }
  notification_channels = [google_monitoring_notification_channel.email.id]
} 