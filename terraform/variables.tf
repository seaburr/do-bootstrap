variable "digitalocean_token" {
  type        = string
  description = "Sets the token for authenticating with DigialOcean."
  default     = null
  sensitive   = true
}

variable "project_name" {
  type        = string
  description = "Sets the project name for this infrastructure footprint. Used in various places to provide useful names to resources."
  default     = "demo"
}

variable "region" {
  type        = string
  description = "Sets the region for DigitalOcean resources."
  default     = "nyc2"
}

variable "vpc_cidr" {
  type        = string
  description = "Sets the IP block size for the VPC."
  default     = "10.20.0.0/16"
}

variable "domain" {
  type        = string
  description = "If set, creates the domain resource as part of the infrastructure footprint."
  default     = null
}

variable "ttl" {
  type        = number
  description = "TTL of DNS records created in DigitalOcean."
  default     = 600
}

variable "k8s_ha" {
  type        = bool
  description = "Sets whether or not the k8s control plane should be highly available."
  default     = false
}

variable "k8s_default_node_slug" {
  type        = string
  description = "Sets the node size of the default node pool in the k8s cluster."
  default     = "s-1vcpu-2gb"
}

variable "k8s_default_auto_scale" {
  type        = bool
  description = "If set, the k8s cluster size will auto-scale based on load and within the bounds of the min/max set."
  default     = true
}

variable "k8s_default_min_nodes" {
  type        = number
  description = "Sets the minimum number of nodes in the default node pool."
  default     = 1
}

variable "k8s_default_max_nodes" {
  type        = number
  description = "Sets the maximum number of nodes in the default node pool."
  default     = 3
}

variable "k8s_major_version" {
  type        = string
  description = "Sets the major version of k8s to use."
  default     = "1.32."
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

variable "flux_github_url" {
  type        = string
  description = "Sets the GitHub repo clone URL (HTTP) to bootstrap Flux with."
  default     = null
}

variable "flux_github_username" {
  type        = string
  description = "Arbitrary username used for bootstrapping Flux."
  default     = "git"
}

variable "flux_github_pat" {
  type        = string
  description = "Github PAT used by Flux."
  default     = null
  sensitive   = true
}

variable "flux_dir" {
  type        = string
  description = "Directory with in the repository for Flux to sync from."
  default     = null
}