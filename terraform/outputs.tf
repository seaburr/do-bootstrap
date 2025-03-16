output "tls_cert_uuid" {
  value       = digitalocean_certificate.tls_cert.uuid
  description = "DigitalOcean managed certficate UUID. This is needed for to configure the k8s load balancer."
}

output "k8s_cluster_uuid" {
  value       = digitalocean_kubernetes_cluster.k8s_cluster.id
  description = "DigitalOcean k8s cluster ID. This is needed for fetching the kubeconfig via doctl."
}

output "pg_cert" {
  value = data.digitalocean_database_ca.cert.certificate
}

output "pg_connection_details" {
  value = {
    host     = data.digitalocean_database_connection_pool.postgres_pooler.private_host
    port     = data.digitalocean_database_connection_pool.postgres_pooler.port
    db_name  = data.digitalocean_database_connection_pool.postgres_pooler.db_name
    user     = data.digitalocean_database_user.user.name
    password = data.digitalocean_database_user.user.password
  }
  sensitive = true
}