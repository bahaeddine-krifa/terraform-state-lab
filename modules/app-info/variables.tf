variable "app_name" {
  description = "Name of the application"
  type        = string
  nullable    = false

  validation {
    condition     = length(trimspace(var.app_name)) > 0
    error_message = "The application name must not be empty."
  }
}


variable "environment" {
  description = "Deployment environment"
  type        = string
  nullable    = false

  validation {
    condition = contains(
      ["development", "staging", "production", "learning"],
      var.environment
    )
    error_message = "Environment must be development, staging, production, or learning."
  }
}