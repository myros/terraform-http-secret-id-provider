data "http" "get_secret_id" {
  request_headers = {
    "X-Vault-Role" = var.approle_role_name,
    "X-Vault-Namespace" = var.vault_namespace,
    "${var.api_token_key}" = var.api_token_value
  }

  url    = var.api_url
  method = var.api_http_method

  lifecycle {
    postcondition {
      condition     = contains(["200", 200, 204], self.status_code)
      error_message = "Status code invalid"
    }
  }
}

