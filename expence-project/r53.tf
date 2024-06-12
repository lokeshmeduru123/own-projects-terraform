resource "aws_route53_record" "expence" {
  zone_id = var.zone_id
  count = length(var.instance_names)
  name    = local.record_name
  type    = "A"
  ttl     = 300
  records = local.record_value
  allow_overwrite = true
}


