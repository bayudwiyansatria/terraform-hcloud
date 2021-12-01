data "local_file" "ssh_public_key" {
  count    = length(var.ssh_public_key)
  filename = var.ssh_public_key[count.index]
}