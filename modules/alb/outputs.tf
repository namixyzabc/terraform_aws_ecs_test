output "alb_dns_name" {
  description = "The DNS name of the ALB"
  value       = aws_lb.alb.dns_name
}

output "target_group_arn" {
  description = "The ARN of the target group"
  value       = aws_lb_target_group.target_group.arn
}

output "alb_security_group_id" {
  description = "ALB security group ID"
  value = aws_security_group.alb.id
}
