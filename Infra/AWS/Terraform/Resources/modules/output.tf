output "route53_zone" {
  value       = module.route53_zone.*.aws_route53_zone_id
  description = "The route53 zone id will be deployed into dev"
}

