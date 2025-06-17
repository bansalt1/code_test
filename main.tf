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

resource "null_resource" "null4" { }
resource "null_resource" "null5" { }

resource "random_string" "random" {
  length           = 15
  special          = true
  override_special = "/@£$"
}
/*
resource "time_sleep" "wait_30_seconds" {
  depends_on = [random_string.random]
  create_duration = "30s"
}
*/
####
