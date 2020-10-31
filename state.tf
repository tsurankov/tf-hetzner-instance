terraform {
  backend "s3" {
    bucket  = "sts-terraform-tf-state"
    key     = "tf-hetzner-instance/terraform.tfstate"
    region  = "eu-central-1"
    encrypt = "true"
  }
}