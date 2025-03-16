<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | ~> 2.0 |
| <a name="requirement_flux"></a> [flux](#requirement\_flux) | ~> 1.5 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.42.0 |
| <a name="provider_flux"></a> [flux](#provider\_flux) | 1.5.1 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.36.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_certificate.tls_cert](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/certificate) | resource |
| [digitalocean_database_cluster.postgres_cluster](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/database_cluster) | resource |
| [digitalocean_database_connection_pool.postgres_pooler](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/database_connection_pool) | resource |
| [digitalocean_database_db.database](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/database_db) | resource |
| [digitalocean_database_user.user](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/database_user) | resource |
| [digitalocean_domain.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/domain) | resource |
| [digitalocean_kubernetes_cluster.k8s_cluster](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_cluster) | resource |
| [digitalocean_record.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/record) | resource |
| [digitalocean_vpc.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/vpc) | resource |
| [flux_bootstrap_git.this](https://registry.terraform.io/providers/fluxcd/flux/latest/docs/resources/bootstrap_git) | resource |
| [kubernetes_service.dolb](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service) | resource |
| [digitalocean_database_ca.cert](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/database_ca) | data source |
| [digitalocean_database_connection_pool.postgres_pooler](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/database_connection_pool) | data source |
| [digitalocean_database_user.user](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/database_user) | data source |
| [digitalocean_kubernetes_cluster.k8s_cluster](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/kubernetes_cluster) | data source |
| [digitalocean_kubernetes_versions.k8s_version](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/kubernetes_versions) | data source |
| [kubernetes_service.dolb](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/data-sources/service) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_container_registry_tier"></a> [container\_registry\_tier](#input\_container\_registry\_tier) | Sets the subscription tier of the container registry. Options are: stater, basic, or professional. | `string` | `"starter"` | no |
| <a name="input_database_node_count"></a> [database\_node\_count](#input\_database\_node\_count) | Sets the number of nodes within the database cluster. | `number` | `1` | no |
| <a name="input_database_size"></a> [database\_size](#input\_database\_size) | Sets the size of the database cluster. | `string` | `"db-s-1vcpu-1gb"` | no |
| <a name="input_digitalocean_token"></a> [digitalocean\_token](#input\_digitalocean\_token) | Sets the token for authenticating with DigialOcean. | `string` | `null` | no |
| <a name="input_domain"></a> [domain](#input\_domain) | If set, creates the domain resource as part of the infrastructure footprint. | `string` | `null` | no |
| <a name="input_flux_dir"></a> [flux\_dir](#input\_flux\_dir) | Directory with in the repository for Flux to sync from. | `string` | `null` | no |
| <a name="input_flux_github_pat"></a> [flux\_github\_pat](#input\_flux\_github\_pat) | Github PAT used by Flux. | `string` | `null` | no |
| <a name="input_flux_github_url"></a> [flux\_github\_url](#input\_flux\_github\_url) | Sets the GitHub repo clone URL (HTTP) to bootstrap Flux with. | `string` | `null` | no |
| <a name="input_flux_github_username"></a> [flux\_github\_username](#input\_flux\_github\_username) | Arbitrary username used for bootstrapping Flux. | `string` | `"git"` | no |
| <a name="input_k8s_default_auto_scale"></a> [k8s\_default\_auto\_scale](#input\_k8s\_default\_auto\_scale) | If set, the k8s cluster size will auto-scale based on load and within the bounds of the min/max set. | `bool` | `true` | no |
| <a name="input_k8s_default_max_nodes"></a> [k8s\_default\_max\_nodes](#input\_k8s\_default\_max\_nodes) | Sets the maximum number of nodes in the default node pool. | `number` | `2` | no |
| <a name="input_k8s_default_min_nodes"></a> [k8s\_default\_min\_nodes](#input\_k8s\_default\_min\_nodes) | Sets the minimum number of nodes in the default node pool. | `number` | `1` | no |
| <a name="input_k8s_default_node_slug"></a> [k8s\_default\_node\_slug](#input\_k8s\_default\_node\_slug) | Sets the node size of the default node pool in the k8s cluster. | `string` | `"s-2vcpu-4gb-amd"` | no |
| <a name="input_k8s_ha"></a> [k8s\_ha](#input\_k8s\_ha) | Sets whether or not the k8s control plane should be highly available. | `bool` | `false` | no |
| <a name="input_k8s_major_version"></a> [k8s\_major\_version](#input\_k8s\_major\_version) | Sets the major version of k8s to use. | `string` | `"1.32."` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Sets the project name for this infrastructure footprint. Used in various places to provide useful names to resources. | `string` | `"demo"` | no |
| <a name="input_region"></a> [region](#input\_region) | Sets the region for DigitalOcean resources. | `string` | `"nyc1"` | no |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | TTL of DNS records created in DigitalOcean. | `number` | `600` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | Sets the IP block size for the VPC. | `string` | `"10.20.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_k8s_cluster_uuid"></a> [k8s\_cluster\_uuid](#output\_k8s\_cluster\_uuid) | DigitalOcean k8s cluster ID. This is needed for fetching the kubeconfig via doctl. |
| <a name="output_pg_cert"></a> [pg\_cert](#output\_pg\_cert) | n/a |
| <a name="output_pg_connection_details"></a> [pg\_connection\_details](#output\_pg\_connection\_details) | n/a |
| <a name="output_tls_cert_uuid"></a> [tls\_cert\_uuid](#output\_tls\_cert\_uuid) | DigitalOcean managed certficate UUID. This is needed for to configure the k8s load balancer. |
<!-- END_TF_DOCS -->