locals {
  namespace = var.parent_namespace ? var.parent_namespace : null
}

resource "vault_namespace" "this" {
  namespace = local.namespace
  path      = var.name
  custom_metadata = {
    team = var.metadata_team
  }
}
