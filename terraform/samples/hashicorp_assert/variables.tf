variable "bool" {
  type = bool
  validation {
    condition     = provider::assert::true(var.bool)
    error_message = "The boolean value must be true."
  }
}

variable "cidr" {
  type = string
  validation {
    condition     = provider::assert::cidr(var.cidr)
    error_message = "The CIDR block is not valid."
  }
}
