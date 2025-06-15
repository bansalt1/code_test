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

resource "null_resource" "null11" { }
resource "null_resource" "null2" { }

resource "random_string" "random" {
  length           = 11
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
