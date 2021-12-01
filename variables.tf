variable "hcloud_token" {
  sensitive   = true
  type        = string
  description = "Hcloud API Key"
}

variable "cluster_name" {
  type        = string
  description = "Kubernetes Cluster Name"
}

variable "ssh_private_key" {
  type        = string
  description = "SSH Private Key"
}

variable "ssh_public_key" {
  type        = list(string)
  description = "SSH Public Key"
}
