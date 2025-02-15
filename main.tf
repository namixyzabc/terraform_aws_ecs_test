terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "s3" {
  source = "./modules/s3"

  bucket_name = var.bucket_name
}

module "acm" {
  source = "./modules/acm"

  domain_name = var.domain_name
  zone_id     = var.zone_id
}

module "cloudfront" {
  source = "./modules/cloudfront"

  bucket_regional_domain_name = module.s3.bucket_regional_domain_name
  acm_certificate_arn         = module.acm.acm_certificate_arn
  domain_name                 = var.domain_name
}

module "route53" {
  source = "./modules/route53"

  domain_name         = var.domain_name
  zone_id             = var.zone_id
  cloudfront_zone_id  = module.cloudfront.cloudfront_hosted_zone_id
  cloudfront_dns_name = module.cloudfront.cloudfront_domain_name
}

module "rds" {
  source = "./modules/rds"

  db_name     = var.db_name
  db_username = var.db_username
  db_password = var.db_password
}

module "alb" {
  source = "./modules/alb"

  vpc_id               = var.vpc_id
  public_subnet_ids    = var.public_subnet_ids
  certificate_arn      = module.acm.acm_certificate_arn
}

module "ecs" {
  source = "./modules/ecs"

  cluster_name          = var.cluster_name
  vpc_id                = var.vpc_id
  public_subnet_ids     = var.public_subnet_ids
  alb_target_group_arns = [module.alb.target_group_arn]
  db_endpoint           = module.rds.db_endpoint
  db_name               = module.rds.db_name
  db_username           = module.rds.db_username
  db_password           = module.rds.db_password
}

