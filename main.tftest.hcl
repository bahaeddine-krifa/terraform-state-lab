run "check_module_outputs" {
  command = plan

  assert {
    condition     = output.lesson == "Terraform remote state is configured"
    error_message = "The lesson output does not match the expected value."
  }

  assert {
    condition     = output.app_description == "terraform-state-lab - learning"
    error_message = "The app description does not match the expected value."
  }
}

run "reject_invalid_environment" {
  command = plan

  variables {
    environment = "invalid"
  }

  expect_failures = [
    var.environment
  ]
}
