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

# Default namespace Auth method(s)
# Default namespace Secret engine(s)