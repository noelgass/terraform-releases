# Assert

## Introduction

Detailed information about the [Assert Provider](https://registry.terraform.io/providers/hashicorp/assert/latest/docs) can be found on the HashiCorp Terraform Registry.
This sample provides a brief overview of how to use the provider.

## Developer Documentation

To test the provided sample code, you can use `terraform init`, `terraform plan`, or the `terraform test` functionality. The relevant commands are listed below.

### Plan

```shell
terraform init
terraform plan -var="bool=false" -var="cidr=0.0.0.300/50"
```

**Output:**

```shell
Planning failed. Terraform encountered an error while generating this plan.
╷
│ Error: Invalid value for variable
│
│   on variables.tf line 1:
│    1: variable "bool" {
│     ├────────────────
│     │ var.bool is false
│
│ The boolean value must be true.
│
│ This was checked by the validation rule at variables.tf:3,3-13.
╵
╷
│ Error: Invalid value for variable
│
│   on variables.tf line 9:
│    9: variable "cidr" {
│     ├────────────────
│     │ vvar.cidr is "0.0.0.300/50"
│
│ The CIDR block is not valid.
│
│ This was checked by the validation rule at variables.tf:11,3-13.
```

### Tests

```shell
terraform test -verbose
```

**Output:**

```shell
tests\default.tftest.hcl... in progress
  run "plan_should_succeed_with_errors"... pass

Planning failed. Terraform encountered an error while generating this plan.


tests\default.tftest.hcl... tearing down
tests\default.tftest.hcl... pass

Success! 1 passed, 0 failed.
```
