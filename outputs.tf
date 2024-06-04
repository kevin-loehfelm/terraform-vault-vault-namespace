output "id" {
  value = vault_namespace.this.id
}

output "path" {
  value = vault_namespace.this.path_fq
}

output "metadata" {
  value = {
    contact_name    = local.contact_name
    contact_email   = local.contact_email
    description     = local.description
    wiki_reference  = local.wiki_reference
    jira_reference  = local.jira_reference
    expiration_date = local.expiration_date
  }
}