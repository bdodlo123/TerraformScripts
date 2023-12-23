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
  tags = {
    Customer           = var.customer
    Category           = var.category
    BusinessUnit       = var.business_unit
    ApplicationName    = var.applicationname
    DataClassification = var.data_classification
    ApproverName       = var.approver_name
    Environment        = var.environment
    OwnerName          = var.owner_name
    Contact            = var.contact
  }
}

#--------------------------------------------------------------------
# Route53 Zone
#--------------------------------------------------------------------

module "route53_zone" {
  source    = "../../Resources/Route53_Zone"
  count     = local.feature_flags.route53_zone == true ? 1 : 0
  zone_name = local.resource_names.route53_zone_name
  tags      = local.tags
  #tags      = merge({ "ResourceName" = format("%s", local.resource_names.route53_zone_name) }, local.tags)
}



