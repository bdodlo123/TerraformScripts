# Route53_Zone will be created#
resource "aws_route53_zone" "zone" { 
  name = var.zone_name
  tags = var.tags
}
