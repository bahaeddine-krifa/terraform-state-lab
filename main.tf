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

module "app_info" {
  source = "./modules/app-info"

  app_name    = "terraform-state-lab"
  environment = var.environment
}

output "app_description" {
  value = module.app_info.app_description
}

output "lesson" {
  value = "Terraform remote state is configured"
}
