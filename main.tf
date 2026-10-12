data "vault_kv_secrets_list" "kv_secrets_list_lookup" {
  for_each = var.kv_secrets_list_lookup

  path      = each.value.path
  namespace = each.value.namespace
}

