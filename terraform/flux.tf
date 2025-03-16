resource "flux_bootstrap_git" "this" {
  delete_git_manifests = false
  path                 = var.flux_dir
}