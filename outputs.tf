output "status_code" {
  value = data.http.get_secret_id.status_code
}
output "secret_id" {
  value = local.response.secret_id
}

output "data" {
  value = local.response
  sensitive = true
}