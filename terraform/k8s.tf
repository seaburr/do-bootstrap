data "digitalocean_kubernetes_versions" "k8s_version" {
  version_prefix = "1.30."
}

resource "digitalocean_kubernetes_cluster" "k8s_cluster" {
  name         = "${var.project_name}-k8s-cluster"
  region       = var.region
  auto_upgrade = true
  version      = data.digitalocean_kubernetes_versions.k8s_version.latest_version

  maintenance_policy {
    day        = "saturday"
    start_time = "04:00"
  }

  node_pool {
    name       = "${var.project_name}-default-node-pool"
    size       = "s-1vcpu-2gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 2
  }
}