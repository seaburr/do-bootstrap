output "tls_cert_uuid" {
  value       = digitalocean_certificate.tls_cert.uuid
  description = "DigitalOcean managed certficate UUID. This is needed for to configure the k8s load balancer."
}

output "k8s_cluster_uuid" {
  value       = digitalocean_kubernetes_cluster.k8s_cluster.id
  description = "DigitalOcean k8s cluster ID. This is needed for fetching the kubeconfig via doctl."
}