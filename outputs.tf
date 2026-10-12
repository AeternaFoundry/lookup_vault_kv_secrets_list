output "kv_secrets_list_lookup_id" {
  description = "Map of id values across all kv_secrets_list_lookup, keyed the same as var.kv_secrets_list_lookup except keys with no id are omitted"
  value       = { for k, v in data.vault_kv_secrets_list.kv_secrets_list_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kv_secrets_list_lookup_names" {
  description = "Map of names values across all kv_secrets_list_lookup, keyed the same as var.kv_secrets_list_lookup except keys with no names are omitted"
  value       = { for k, v in data.vault_kv_secrets_list.kv_secrets_list_lookup : k => v.names if v.names != null && length(v.names) > 0 }
  sensitive   = true
}
output "kv_secrets_list_lookup_namespace" {
  description = "Map of namespace values across all kv_secrets_list_lookup, keyed the same as var.kv_secrets_list_lookup except keys with no namespace are omitted"
  value       = { for k, v in data.vault_kv_secrets_list.kv_secrets_list_lookup : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "kv_secrets_list_lookup_path" {
  description = "Map of path values across all kv_secrets_list_lookup, keyed the same as var.kv_secrets_list_lookup except keys with no path are omitted"
  value       = { for k, v in data.vault_kv_secrets_list.kv_secrets_list_lookup : k => v.path if v.path != null && length(v.path) > 0 }
}

