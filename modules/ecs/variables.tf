variable "cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "public_subnet_ids" {
  description = "The IDs of the public subnets"
  type        = list(string)
}

variable "alb_target_group_arns" {
  description = "The ARNs of the ALB target groups"
  type        = list(string)
}

variable "db_endpoint" {
  description = "The database endpoint"
  type        = string
}

variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "db_username" {
  description = "The database username"
  type        = string
}

variable "db_password" {
  description = "The database password"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "AWS Region"
  type = string
}

variable "alb_security_group_ids" {
  description = "ALB security group IDs"
  type = list(string)
}
