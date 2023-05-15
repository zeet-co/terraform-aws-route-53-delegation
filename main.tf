data "aws_caller_identity" "current" {}

data "aws_availability_zones" "available" {}

data "aws_route53_zone" "parent" {
  name = var.parent_name
}

resource "aws_route53_record" "delegate" {
  zone_id = data.aws_route53_zone.parent.zone_id
  name    = var.delegate_name
  type    = "NS"
  ttl     = "300"
  records = var.delegate_name_servers
}
