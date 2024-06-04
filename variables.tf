variable "parent_namespace" {
  type        = string
  description = "parent namespace (optional)"
  nullable    = true
  default     = null
}

variable "path" {
  type        = string
  description = "namespace path"
}

variable "contact_name" {
  type        = string
  description = "contact name"
}

variable "contact_email" {
  type        = string
  description = "contact email"
}

variable "description" {
  type        = string
  description = "namespace description"
}

variable "jira_reference" {
  type        = string
  description = "jira url for temporary namespace"
}

variable "wiki_reference" {
  type        = string
  description = "wiki url for temporary namespace"
}

variable "expiration_date" {
  type        = string
  description = "expiration date"
}
