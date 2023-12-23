variable "route53_zone" {
  type        = bool
  default     = false
  description = "If AWS transit gateway should be provisioned or not?"
}
###################################################
# Route53 Zone
###################################################
variable "zone_name" {
  description = "This is the name of the hosted zone."
  type        = string
  default     = ""
}
variable "root_prefix" {
  type        = string
  description = "exact prefix of the domain"
  default     = ""
}

###################################################
# TAGs
###################################################
variable "customer" {
  type = string
}
variable "category" {
  type = string
}
variable "environment" {
  type = string
}
variable "business_unit" {
  type = string
}
variable "applicationname" {
  type = string
}
variable "approver_name" {
  type = string
}
variable "owner_name" {
  type = string
}
variable "data_classification" {
  type = string
}
variable "contact" {
  type = string
}
# variable "region" {
#   type        = string
#   description = ""
# }

