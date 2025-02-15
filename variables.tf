variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket for static website content"
  type        = string
  default     = "my-static-website-bucket-createTimeStamp_20250215" # Replace with a unique name
}

variable "domain_name" {
  description = "The domain name for the website (e.g., example.com)"
  type        = string
  default     = "test-domain-aws.click " # Replace with your domain name
}

variable "zone_id" {
  description = "The Route 53 hosted zone ID for the domain"
  type        = string
  default     = "Z042796721Y84FSGY7DJ4" # Replace with your Route 53 hosted zone ID
}

variable "db_name" {
  description = "The name of the RDS database"
  type        = string
  default     = "mydb"
}

variable "db_username" {
  description = "The username for the RDS database"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "The password for the RDS database"
  type        = string
  sensitive   = true
  default     = "passwordxyzabc123" # Replace with a strong password
}

variable "cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
  default     = "my-ecs-cluster"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs"
  type = list(string)
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24",
  ]
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDRs"
  type = list(string)
  default = [
    "10.0.3.0/24",
    "10.0.4.0/24",
  ]
}

variable "availability_zones" {
  description = "Availability Zones"
  type = list(string)
  default = ["ap-northeast-1a", "ap-northeast-1c"]
}
