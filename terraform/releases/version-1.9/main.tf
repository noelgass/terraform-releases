locals {
  tags = {
    environment    = var.environment
    owner          = "noelgass"
    terraform-test = "true"
  }
  # Simplified
  schemas = {
    resource_group_schema  = "rg-$${name}-$${environment}-$${location_abbr}"
    storage_account_schema = "st$${replace(name, \"/[^a-zA-Z0-9]/\", \"\")}$${environment}$${location_abbr}"
  }
}

resource "azurerm_resource_group" "this" {
  # Simplified, any data source can be used (e.g. azure storage account data source)
  name = templatestring(local.schemas.resource_group_schema, {
    name          = var.name,
    environment   = var.environment,
    location_abbr = var.location_abbr
  })
  location = var.location
  tags     = local.tags
}

resource "azurerm_storage_account" "this" {
  # Simplified, any data source can be used (e.g. azure storage account data source)
  name = templatestring(local.schemas.storage_account_schema, {
    name          = var.name,
    environment   = var.environment,
    location_abbr = var.location_abbr
  })
  resource_group_name      = azurerm_resource_group.this.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = local.tags
}
