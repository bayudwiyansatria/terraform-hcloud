data "terraform_remote_state" "infra" {
  backend = "remote"

  config = {
    organization = "bayudwiyansatria"
    workspaces = {
      name = "hcloud-nginx"
    }
  }
}

locals {
  host   = module.infra.cluster_endpoint
  ca     = module.infra.cluster_ca_certificate
  client = module.infra.cluster_client_certificate
  key    = module.infra.cluster_client_key
}

provider "hcloud" {
  token = var.hcloud_token
}

provider "helm" {
  kubernetes {
    host                   = data.terraform_remote_state.infra.outputs.cluster_endpoint
    cluster_ca_certificate = base64decode(data.terraform_remote_state.infra.outputs.cluster_ca_certificate)
    client_certificate     = base64decode(data.terraform_remote_state.infra.outputs.cluster_client_certificate)
    client_key             = base64decode(data.terraform_remote_state.infra.outputs.cluster_client_key)
  }
}
