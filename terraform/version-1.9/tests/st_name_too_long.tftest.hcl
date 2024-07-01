run "plan_storage_account_name_too_long_should_fail_successfully" {
  command = plan

  variables {
    name = "noel-gass-tftest-too-long-name-should-fail-successfully"
  }

  # Asserts that the plan should succeed
  expect_failures = [
    var.name
  ]
}
