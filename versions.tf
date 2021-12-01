terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "bayudwiyansatria"
    workspaces {
      prefix = "hcloud-"
    }
  }
}