run "plan_should_success" {
  command = plan

  variables {
    name = "noel-gass-tftest"
  }

  # Asserts that the plan should succeed
  assert {
    condition     = azurerm_resource_group.this.name == "rg-noel-gass-tftest-sbx-we"
    error_message = "The resource group should be created."
  }

  assert {
    condition     = azurerm_storage_account.this.name == "stnoelgasstftestsbxwe"
    error_message = "The storage account should be created."
  }
}
