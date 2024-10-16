<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.42.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_database_cluster.postgres_cluster](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/database_cluster) | resource |
| [digitalocean_database_connection_pool.postgres_pooler](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/database_connection_pool) | resource |
| [digitalocean_database_db.database](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/database_db) | resource |
| [digitalocean_database_user.user](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/database_user) | resource |
| [digitalocean_domain.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/domain) | resource |
| [digitalocean_kubernetes_cluster.k8s_cluster](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_cluster) | resource |
| [digitalocean_vpc.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/vpc) | resource |
| [digitalocean_kubernetes_versions.k8s_version](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/kubernetes_versions) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_container_registry_tier"></a> [container\_registry\_tier](#input\_container\_registry\_tier) | Sets the subscription tier of the container registry. Options are: stater, basic, or professional. | `string` | `"starter"` | no |
| <a name="input_database_node_count"></a> [database\_node\_count](#input\_database\_node\_count) | Sets the number of nodes within the database cluster. | `number` | `1` | no |
| <a name="input_database_size"></a> [database\_size](#input\_database\_size) | Sets the size of the database cluster. | `string` | `"db-s-1vcpu-1gb"` | no |
| <a name="input_digitalocean_token"></a> [digitalocean\_token](#input\_digitalocean\_token) | Sets the token for authenticating with DigialOcean. | `string` | `null` | no |
| <a name="input_domain"></a> [domain](#input\_domain) | If set, creates the domain resource as part of the infrastructure footprint. | `string` | `null` | no |
| <a name="input_k8s_default_auto_scale"></a> [k8s\_default\_auto\_scale](#input\_k8s\_default\_auto\_scale) | If set, the k8s cluster size will auto-scale based on load and within the bounds of the min/max set. | `bool` | `true` | no |
| <a name="input_k8s_default_max_nodes"></a> [k8s\_default\_max\_nodes](#input\_k8s\_default\_max\_nodes) | Sets the maximum number of nodes in the default node pool. | `number` | `2` | no |
| <a name="input_k8s_default_min_nodes"></a> [k8s\_default\_min\_nodes](#input\_k8s\_default\_min\_nodes) | Sets the minimum number of nodes in the default node pool. | `number` | `1` | no |
| <a name="input_k8s_default_node_slug"></a> [k8s\_default\_node\_slug](#input\_k8s\_default\_node\_slug) | Sets the node size of the default node pool in the k8s cluster. | `string` | `"s-1vcpu-2gb"` | no |
| <a name="input_k8s_ha"></a> [k8s\_ha](#input\_k8s\_ha) | Sets whether or not the k8s control plane should be highly available. | `bool` | `false` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Sets the project name for this infrastructure footprint. Used in various places to provide useful names to resources. | `string` | `"demo"` | no |
| <a name="input_region"></a> [region](#input\_region) | Sets the region for DigitalOcean resources. | `string` | `"nyc1"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | Sets the IP block size for the VPC. | `string` | `"10.20.0.0/16"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->