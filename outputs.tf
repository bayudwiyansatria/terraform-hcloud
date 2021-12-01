#output "kube_config" {
#  sensitive   = true
#  description = "Cluster Config Files"
#  value       = module.infra.kube_config
#  depends_on  = [
#    module.infra
#  ]
#}

output "master" {
  sensitive   = false
  description = "Cluster Master Hosts"
  value       = module.infra.master
  depends_on  = [
    module.infra
  ]
}

output "worker" {
  sensitive   = false
  description = "Cluster Worker Hosts"
  value       = module.infra.worker
  depends_on  = [
    module.infra
  ]
}

output "cluster_name" {
  sensitive   = false
  description = "Kubernetes Cluster Name"
  value       = var.cluster_name
}

output "cluster_endpoint" {
  sensitive   = false
  description = "Cluster Endpoint"
  value       = module.infra.cluster_endpoint
  depends_on  = [
    module.infra
  ]
}

output "cluster_ca_certificate" {
  sensitive   = true
  description = "Cluster CA Certificate"
  value       = module.infra.cluster_ca_certificate
  depends_on  = [
    module.infra
  ]
}

output "cluster_client_certificate" {
  sensitive   = true
  description = "Cluster Client Certificate"
  value       = module.infra.cluster_client_certificate
  depends_on  = [
    module.infra
  ]
}

output "cluster_client_key" {
  sensitive   = true
  description = "Cluster Client Key"
  value       = module.infra.cluster_client_key
  depends_on  = [
    module.infra
  ]
}