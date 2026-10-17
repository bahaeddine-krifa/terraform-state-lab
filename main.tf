terraform {
  required_version = ">= 1.10.0"

  backend "s3" {
    bucket       = "977186486282-terraform-state-lab"
    key          = "learning/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}

output "lesson" {
  value = "Terraform remote state is configured"
}