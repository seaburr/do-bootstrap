resource "digitalocean_certificate" "tls_cert" {
  name    = "${var.project_name}-le-tls-cert"
  type    = "lets_encrypt"
  domains = [digitalocean_domain.this[0].name]

  lifecycle {
    create_before_destroy = true
  }
}