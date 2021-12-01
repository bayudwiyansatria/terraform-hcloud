resource "tls_private_key" "ssh_key_pair" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

module "k8s" {
  source                   = "bayudwiyansatria/kubernetes/hcloud"
  cluster_admin_ssh_keys   = concat(data.local_file.ssh_public_key.*.content, [
    tls_private_key.ssh_key_pair.public_key_openssh
  ])
  cluster_name             = "bayudwiyansatria"
  hcloud_token             = var.hcloud_token
  cluster_admin_ssh_access = tls_private_key.ssh_key_pair.private_key_pem
}
