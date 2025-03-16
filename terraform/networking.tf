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

resource "digitalocean_record" "this" {
  count  = var.domain != null ? 1 : 0
  domain = digitalocean_domain.this[0].id
  type   = "A"
  name   = "@"
  ttl    = var.ttl
  value  = data.kubernetes_service.dolb.status.0.load_balancer.0.ingress.0.ip

  depends_on = [
    kubernetes_service.dolb
  ]
}