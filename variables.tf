# Auxilary data and resources
data "hcloud_ssh_key" "ssh_key" {
  fingerprint = var.hcloud_ssh_key_fingerprint
}


# Variables
variable "hcloud_instance_name" {
  default = "docker-01"
}

variable "hcloud_image" {
  default = "ubuntu-20.04"
}

variable "hcloud_server_type" {
  default = "cx11"
}

variable "hcloud_location" {
  default = "nbg1"
}

variable "user_data_file" {
  default = "files/user_data_docker.sh"
}


# Secrets
variable "hcloud_token" {}

variable "hcloud_ssh_key_fingerprint" {}
