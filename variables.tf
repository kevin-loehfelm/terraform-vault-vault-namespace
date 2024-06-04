variable "parent_namespace" {
  type        = string
  description = "parent namespace (optional)"
  nullable    = true
  default     = null
}

variable "path" {
  type        = string
  description = "namespace path"
  nullable    = true
}

variable "contact_name" {
  type        = string
  description = "contact name"
  nullable    = true
}

variable "contact_email" {
  type        = string
  description = "contact email"
  nullable    = true
}

variable "description" {
  type        = string
  description = "namespace description"
  nullable    = true
}

variable "jira_reference" {
  type        = string
  description = "jira url for temporary namespace"
  nullable    = true
}

variable "wiki_reference" {
  type        = string
  description = "wiki url for temporary namespace"
  nullable    = true
}

variable "expiration_date" {
  type        = string
  description = "expiration date"
  nullable    = true
}
