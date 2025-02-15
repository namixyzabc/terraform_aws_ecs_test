output "db_endpoint" {
  description = "The database endpoint"
  value       = aws_db_instance.default.endpoint
}

output "db_name" {
  description = "The name of the database"
  value       = aws_db_instance.default.name
}

output "db_username" {
  description = "The database username"
  value       = aws_db_instance.default.username
}

output "db_password" {
  description = "The database password"
  value       = aws_db_instance.default.password
  sensitive   = true
}
