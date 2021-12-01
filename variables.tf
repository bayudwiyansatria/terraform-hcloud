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

variable "cluster_endpoint" {
  type        = string
  description = "Kubernetes Cluster Endpoint"
  default     = ""
}

variable "cluster_ca_certificate" {
  sensitive   = true
  type        = string
  description = "Kubernetes Cluster CA Certificate"
  default     = ""
}

variable "cluster_client_certificate" {
  sensitive   = true
  type        = string
  description = "Kubernetes Cluster Client Certificate"
  default     = ""
}

variable "cluster_client_key" {
  sensitive   = true
  type        = string
  description = "Kubernetes Cluster Client Key"
  default     = ""
}
