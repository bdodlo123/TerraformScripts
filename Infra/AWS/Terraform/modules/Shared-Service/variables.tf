variable "route53_zone" {
  type        = bool
  default     = true
  description = "If AWS transit gateway should be provisioned or not?"
}
###################################################
# Route53 Zone
###################################################
variable "zone_name" {
  description = "This is the name of the hosted zone."
  type        = string
  default     = "www.myweb"
}
variable "root_prefix" {
  type        = string
  description = "exact prefix of the domain"
  default     = "com"
}

###################################################
# TAGs
#################################################
variable "customer" {
  type = string
default = "org"
}
variable "category" {
  type = string
default = "Cubicway"
}
variable "environment" {
  type = string
default = "Dev"
}
variable "business_unit" {
  type = string
default = "Tech"
}
variable "applicationname" {
  type = string
default = "Sample"
}
variable "approver_name" {
  type = string
default = "harish123@gmail.com"
}
variable "owner_name" {
  type = string
default = "raju123@gmail.com"
}
variable "data_classification" {
  type = string
default = "Test"
}
variable "contact" {
  type = string
default = "harish121@gmail.com"
}
# variable "region" {
#   type        = string
#   description = ""
# }


