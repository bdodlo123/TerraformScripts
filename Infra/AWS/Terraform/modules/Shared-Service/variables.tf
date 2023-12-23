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
###################################################
variable "customer"{
type      = string
default   = ""
}

