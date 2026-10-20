output "app_description" {
  description = "Application name and environment"
  value       = "${var.app_name} - ${var.environment}"
}