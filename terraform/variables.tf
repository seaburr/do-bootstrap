variable "digitalocean_token" {
  type        = string
  description = "Sets the token for authenticating with DigialOcean."
  default     = null
}

variable "project_name" {
  type        = string
  description = "Sets the project name for this infrastructure footprint. Used in various places to provide useful names to resources."
  default     = "demo"
}

variable "region" {
  type        = string
  description = "Sets the region for DigitalOcean resources."
  default     = "nyc1"
}

variable "vpc_cidr" {
  type        = string
  description = "Sets the IP block size for the VPC."
  default     = "10.20.0.0/16"
}

variable "k8s_ha" {
  type        = bool
  description = "Sets whether or not the k8s control plane should be highly available."
  default     = false
}

variable "container_registry_tier" {
  type        = string
  description = "Sets the subscription tier of the container registry. Options are: stater, basic, or professional."
  default     = "starter"
}

variable "database_size" {
  type        = string
  description = "Sets the size of the database cluster."
  default     = "db-s-1vcpu-1gb"
}

variable "database_node_count" {
  type        = number
  description = "Sets the number of nodes within the database cluster."
  default     = 1
}
