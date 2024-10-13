resource "digitalocean_vpc" "this" {
  name        = "${var.project_name}-network-${var.region}"
  description = "Default network for ${var.project_name} project"
  region      = var.region
  ip_range    = var.vpc_cidr
}