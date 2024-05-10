data "vault_namespace" "this" {
  path = var.namespace
}
/*
resource "vault_namespace" "this" {
  namespace = data.vault_namespace.this.path_fq
  path      = var.path
}
*/