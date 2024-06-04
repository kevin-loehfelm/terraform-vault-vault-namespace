locals {
  namespace = var.parent_namespace != null ? var.parent_namespace : null
}

resource "vault_namespace" "this" {
  namespace = local.namespace
  path      = var.path
  custom_metadata = {
    # Point of contact
    contact_name  = var.contact_name
    contact_email = var.contact_email
    # Description
    description = var.description
    # Project context
    wiki_reference = var.wiki_reference
    jira_reference = var.jira_reference
    # Expiry date
    expiration_date = var.expiration_date
  }
}
