
variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "learning"
  nullable    = false

  validation {
    condition = contains(
      ["development", "staging", "production", "learning"],
      var.environment
    )
    error_message = "Environment must be development, staging, production, or learning."
  }
}
