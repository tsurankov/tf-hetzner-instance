terraform {
  required_version = ">= 0.12.0"
  required_providers {
    aws    = "~> 3.13.0"
    hcloud = "~> 1.22"
    random = "~> 3.0"
  }
}

provider "hcloud" {
  token = var.hcloud_token
}
