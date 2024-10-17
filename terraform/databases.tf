resource "digitalocean_database_cluster" "postgres_cluster" {
  name                 = "${var.project_name}-postgres-cluster"
  private_network_uuid = digitalocean_vpc.this.id
  engine               = "pg"
  version              = "16"
  size                 = var.database_size
  region               = var.region
  node_count           = var.database_node_count

  # Inputs are in UTC.
  maintenance_window {
    day  = "saturday"
    hour = "04:00:00"
  }
}

resource "digitalocean_database_connection_pool" "postgres_pooler" {
  cluster_id = digitalocean_database_cluster.postgres_cluster.id
  name       = "${var.project_name}-pg-pool"
  mode       = "transaction"
  size       = 20
  db_name    = var.project_name

  depends_on = [
    digitalocean_database_db.database
  ]

}

resource "digitalocean_database_db" "database" {
  cluster_id = digitalocean_database_cluster.postgres_cluster.id
  name       = var.project_name
}

resource "digitalocean_database_user" "user" {
  cluster_id = digitalocean_database_cluster.postgres_cluster.id
  name       = var.project_name
}