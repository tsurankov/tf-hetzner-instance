resource "hcloud_server" "instance" {
  count = 0

  name        = var.hcloud_instance_name
  image       = var.hcloud_image
  server_type = var.hcloud_server_type
  backups     = false
  ssh_keys    = [data.hcloud_ssh_key.ssh_key.id]
  user_data   = file(var.user_data_file)
  location    = "hel1"
  datacenter  = "hel1-dc2"
}