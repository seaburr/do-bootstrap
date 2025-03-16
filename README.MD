# do-bootstrap

This project aims to be a starting point for deploying a usable, well-architected footprint on DigitalOcean for running containerized applications.

## Dependencies

### Platforms

Below are the accounts/services that `do-bootstrap` is dependant on.

* GitHub
* DigitalOcean
* Terraform Cloud

### Tools

Below are the pieces of software which need to be installed on the provisioner machine.

* Terraform (written using 1.9.7)

```sh
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```

* doctl

```sh
brew install doctl
```

* kubectl (1.30)

* Flux

```sh
brew install fluxcd/tap/flux
```

* terraform-docs

```sh
brew install terraform-docs
```

* helm

```sh
brew install helm
```

## Setting up Environment

This project is currently leveraging Terraform Cloud as the backend. These are the variables that need to be defined in the workspace:

* `digitalocean_token` - Token used to authenticate with DigitalOcean APIs.
* `domain` - Domain name. Needs to exist within DigitalOcean and be pointed at their nameservers.
* `flux_github_pat` - Personal Access Token (PAT) needed by Flux to authenticate with GitHub.
* `flux_github_url` - HTTPS clone URL of Flux repository.

## Connecting To Cluster

After the cluster is created, you can use the terraform output `k8s_cluster_uuid` to get cluster credentials.

```
doctl kubernetes cluster kubeconfig save [k8s-cluster_uuid]
```