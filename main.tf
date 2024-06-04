locals {
  namespace = var.parent_namespace != null ? var.parent_namespace : null
  
  contact_name    = coalesce(var.contact_name, "unknown")
  contact_email   = coalesce(var.contact_email, "unknown")
  description     = coalesce(var.description, "-")
  wiki_reference  = coalesce(var.wiki_reference, "N/A")
  jira_reference  = coalesce(var.wiki_reference, "N/A")
  expiration_date = coalesce(var.expiration_date, "N/A")
}

resource "vault_namespace" "this" {
  namespace = local.namespace
  path      = var.path
  custom_metadata = {
    # Point of contact
    contact_name  = local.contact_name
    contact_email = local.contact_email

    # Description
    description = local.description

    # Project context
    wiki_reference = local.wiki_reference
    jira_reference = local.jira_reference

    # Expiry date
    expiration_date = local.expiration_date
  }
}

# Default namespace Auth method(s)
# Default namespace Secret engine(s)