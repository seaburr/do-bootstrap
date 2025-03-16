
# Setup the DigitalOcean load balancer.

resource "kubernetes_service" "dolb" {
  metadata {
    name = "dolb"
    annotations = {
      "service.beta.kubernetes.io/do-loadbalancer-certificate-id" = digitalocean_certificate.tls_cert.uuid
      "service.beta.kubernetes.io/do-loadbalancer-name"           = "${var.domain}-lb"
    }
  }
  spec {
    selector = {
      "app.kubernetes.io/name" = "aaas"
    }
    session_affinity = "ClientIP"
    port {
      port        = 443
      target_port = 8000
    }

    type = "LoadBalancer"
  }

  lifecycle {
    ignore_changes = [
      metadata,
    ]
  }
}