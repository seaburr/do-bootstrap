terraform {
  cloud {
    organization = "seaburr"
    workspaces {
      name = "do-bootstrap"
    }
  }
}