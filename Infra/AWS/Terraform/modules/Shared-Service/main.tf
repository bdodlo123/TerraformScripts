provider "aws" {
  region = "us-east-1"
}

# terraform {
#   backend "s3" {
#     bucket = ""
#     key    = "terraform.tfstate"
#     region = "us-east-1"
#     dynamodb_table = "tfstateforgithubactions"
    
#   }
# }

#--------------------------------------------------------------------
# Terraform resource provisioning
#--------------------------------------------------------------------

locals {
  resource_names = {
    route53_zone_name = lower(join(".", [var.zone_name, var.customer, var.root_prefix]))
  }

  feature_flags = {
    route53_zone           = var.route53_zone


  }

}

#--------------------------------------------------------------------
# Route53 Zone
#--------------------------------------------------------------------

module "route53_zone" {
  source    = "../../Resources/Route53_Zone"
  count     = local.feature_flags.route53_zone == true ? 1 : 0
  zone_name = local.resource_names.route53_zone_name
  #tags      = local.tags
  #tags      = merge({ "ResourceName" = format("%s", local.resource_names.route53_zone_name) }, local.tags)
}



