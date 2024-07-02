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

resource "null_resource" "null1" { }
resource "null_resource" "null2" { }

resource "random_string" "random" {
  length           = 20
  special          = true
  override_special = "/@£$"
}
