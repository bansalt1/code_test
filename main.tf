terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.2"
    }
    random = {
      source = "hashicorp/random"
      version = "3.6.0"
    }
  }
}

resource "null_resource" "null3" { }
resource "null_resource" "null4" { }

resource "random_string" "random" {
  length           = 10
  special          = true
  override_special = "/@£$"
}
