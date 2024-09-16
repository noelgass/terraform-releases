run "plan_should_succeed_with_errors" {
  command = plan

  variables {
    bool = false
    cidr = "0.0.0.300/50"
  }

  expect_failures = [
    var.bool,
    var.cidr
  ]
}
