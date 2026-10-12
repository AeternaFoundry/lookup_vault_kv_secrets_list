variable "kv_secrets_list_lookup" {
  description = <<EOT
Map of kv_secrets_list_lookup, attributes below
Required:
    - path
Optional:
    - namespace
EOT

  type = map(object({
    path      = string
    namespace = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

