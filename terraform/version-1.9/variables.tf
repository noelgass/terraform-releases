variable "location" {
  type        = string
  default     = "westeurope"
  description = "The resource location."
}

variable "location_abbr" {
  type        = string
  default     = "we"
  description = "The resource location abbreviation."
}

variable "environment" {
  type        = string
  default     = "sbx"
  description = "The environment."
}

variable "storage_account_length" {
  type        = number
  default     = 17 # 24 - 7 (prefix and suffix)
  description = "The storage account name length."
}

variable "name" {
  type    = string
  default = "tf-test"
  # Simple validation showcase (since a schema is used it wont work in production)
  validation {
    condition     = length(var.name) <= var.storage_account_length
    error_message = "The name must be less than or equal to ${var.storage_account_length} characters."
  }
  description = "The resource name."
}
