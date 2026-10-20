run "check_lesson_output" {
  command = plan

  assert {
    condition     = output.lesson == "Terraform remote state is configured"
    error_message = "The lesson output does not match the expected value."
  }
}
