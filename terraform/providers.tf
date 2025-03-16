provider "digitalocean" {
  token = var.digitalocean_token
}

provider "kubernetes" {
  host  = data.digitalocean_kubernetes_cluster.k8s_cluster.endpoint
  token = data.digitalocean_kubernetes_cluster.k8s_cluster.kube_config[0].token
  cluster_ca_certificate = base64decode(
    data.digitalocean_kubernetes_cluster.k8s_cluster.kube_config[0].cluster_ca_certificate
  )
}

provider "flux" {
  kubernetes = {
    host  = data.digitalocean_kubernetes_cluster.k8s_cluster.endpoint
    token = data.digitalocean_kubernetes_cluster.k8s_cluster.kube_config[0].token
    cluster_ca_certificate = base64decode(
      data.digitalocean_kubernetes_cluster.k8s_cluster.kube_config[0].cluster_ca_certificate
    )
  }
  git = {
    url = var.flux_github_url
    http = {
      username = var.flux_github_username
      password = var.flux_github_pat
    }
  }
}