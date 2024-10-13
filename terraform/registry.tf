#resource "digitalocean_container_registry" "this" {
#  name                   = "${var.project_name}-container-registry"
#  subscription_tier_slug = var.container_registry_tier
#  region                 = var.region
#}