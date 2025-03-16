data "digitalocean_kubernetes_versions" "k8s_version" {
  version_prefix = "1.32."
}

data "digitalocean_kubernetes_cluster" "k8s_cluster" {
  name = resource.digitalocean_kubernetes_cluster.k8s_cluster.name
}

data "kubernetes_service" "dolb" {
  metadata {
    name = "dolb"
  }

  depends_on = [
    kubernetes_service.dolb
  ]
}