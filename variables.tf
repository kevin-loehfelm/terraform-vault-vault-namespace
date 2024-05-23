variable "parent_namespace" {
  type        = string
  description = "parent namespace (optional)"
  default     = null
}

variable "name" {
  type        = string
  description = "namespace name"
}

variable "metadata_team" {
  type        = string
  description = "team"
}
