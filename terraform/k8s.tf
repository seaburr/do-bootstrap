resource "kubernetes_namespace" "sandbox" {
  metadata {
    annotations = {
      name = "sandbox"
    }

    labels = {
      purpose = "sandbox"
    }

    name = "sandbox"
  }
}

resource "kubernetes_service" "dolb" {
  metadata {
    name = "https-with-cert-minimal"
    annotations = {
      "service.beta.kubernetes.io/do-loadbalancer-certificate-id" = digitalocean_certificate.tls_cert.uuid
    }
  }
  spec {
    selector = {
      test = "MyExampleApp"
    }
    session_affinity = "ClientIP"
    port {
      port        = 443
      target_port = 80
    }

    type = "LoadBalancer"
  }

  lifecycle {
    ignore_changes = [
        metadata,
    ]
  }
}

resource "kubernetes_deployment" "example" {
  metadata {
    name = "terraform-example"
    labels = {
      test = "MyExampleApp"
    }
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        test = "MyExampleApp"
      }
    }

    template {
      metadata {
        labels = {
          test = "MyExampleApp"
        }
      }

      spec {
        container {
          image = "nginx:1.21.6"
          name  = "example"

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }

          liveness_probe {
            http_get {
              path = "/"
              port = 80

              http_header {
                name  = "X-Custom-Header"
                value = "Awesome"
              }
            }

            initial_delay_seconds = 3
            period_seconds        = 3
          }
        }
      }
    }
  }
}

