resource "digitalocean_vpc" "this" {
  name        = "${var.project_name}-network-${var.region}"
  description = "Default network for ${var.project_name} project"
  region      = var.region
  ip_range    = var.vpc_cidr
}

resource "digitalocean_domain" "this" {
  count = var.domain != null ? 1 : 0
  name  = var.domain
}