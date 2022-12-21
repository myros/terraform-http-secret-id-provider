variable api_token_key {
  type        = string
  default = "X-API-Key"
  description = "API Autorization Key"
}

variable api_token_value {
  type        = string
  description = "API Autorization Token"
}

variable api_url {
  type        = string
  description = "API URL"
}

variable approle_role_name {
  type        = string
  description = "AppRole Role name"
}

variable vault_namespace {
  type        = string
  default     = "root"
  description = "Vault Namespace"
}

variable api_http_method {
  type        = string
  default     = "POST"
  description = "Vault Namespace"
}