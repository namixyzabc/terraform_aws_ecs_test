resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = var.domain_name
  type    = "A"

  alias {
    name                   = var.cloudfront_dns_name
    zone_id                = var.cloudfront_zone_id
    evaluate_target_health = false
  }
}
