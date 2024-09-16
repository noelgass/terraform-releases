terraform {
  required_version = "~> 1.9"
  required_providers {
    assert = {
      source  = "hashicorp/assert"
      version = "0.13.0"
    }
  }
}

provider "assert" {
  # Configuration options
}
