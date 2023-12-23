output "aws_route53_zone_id" {
  description = "ARN of the AWS Route53 Zone"
  value       = aws_route53_zone.zone.id
}