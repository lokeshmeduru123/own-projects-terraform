resource "aws_route53_record" "expence" {
  zone_id = var.zone_id
  for_each = aws_instance.expence
  name    = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 300
  records = each.value == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
  allow_overwrite = true
}
