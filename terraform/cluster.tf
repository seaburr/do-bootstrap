resource "digitalocean_kubernetes_cluster" "k8s_cluster" {
  name                 = "${var.project_name}-k8s-cluster"
  region               = var.region
  auto_upgrade         = true
  ha                   = var.k8s_ha
  registry_integration = true
  version              = data.digitalocean_kubernetes_versions.k8s_version.latest_version

  maintenance_policy {
    day        = "saturday"
    start_time = "04:00"
  }

  node_pool {
    name       = "${var.project_name}-default-node-pool"
    size       = var.k8s_default_node_slug
    auto_scale = var.k8s_default_auto_scale
    min_nodes  = var.k8s_default_min_nodes
    max_nodes  = var.k8s_default_max_nodes
  }
}