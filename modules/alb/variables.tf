variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "public_subnet_ids" {
  description = "The IDs of the public subnets"
  type        = list(string)
}

variable "certificate_arn" {
  description = "The ARN of the ACM certificate"
  type        = string
}
