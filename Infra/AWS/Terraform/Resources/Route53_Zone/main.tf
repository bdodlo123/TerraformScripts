# Route53_Zone will be created#
resource "aws_route53_zone" "zone" {
#checkov:skip=CKV2_AWS_39:Ensure Domain Name System (DNS) query logging is enabled for Amazon Route 53 hosted zones
#checkov:skip=CKV2_AWS_38:Ensure Domain Name System Security Extensions (DNSSEC) signing is enabled for Amazon Route 53 public 
  name = var.zone_name
  tags = var.tags
}