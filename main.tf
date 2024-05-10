resource "vault_namespace" "this" {
  namespace = var.namespace
  path      = var.path
}