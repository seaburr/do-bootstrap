data "digitalocean_kubernetes_versions" "k8s_version" {
  version_prefix = var.k8s_major_version
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

data "digitalocean_database_ca" "cert" {
  cluster_id = digitalocean_database_cluster.postgres_cluster.id
}

data "digitalocean_database_connection_pool" "postgres_pooler" {
  cluster_id = digitalocean_database_cluster.postgres_cluster.id
  name       = digitalocean_database_connection_pool.postgres_pooler.name
}

data "digitalocean_database_user" "user" {
  cluster_id = digitalocean_database_cluster.postgres_cluster.id
  name       = var.project_name
}