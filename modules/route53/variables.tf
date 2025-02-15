variable "domain_name" {
  description = "The domain name"
  type        = string
}

variable "zone_id" {
  description = "The Route 53 hosted zone ID"
  type        = string
}

variable "cloudfront_zone_id" {
  description = "The CloudFront distribution's hosted zone ID"
  type        = string
}

variable "cloudfront_dns_name" {
  description = "The CloudFront distribution's domain name"
  type        = string
}
