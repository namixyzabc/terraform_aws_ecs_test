output "route53_record_fqdn" {
  description = "The FQDN of the Route 53 record"
  value       = aws_route53_record.record.fqdn
}
