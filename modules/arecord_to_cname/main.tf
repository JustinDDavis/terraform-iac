data "aws_route53_zone" "selected" {
  name         = var.hosted_zone
}

resource "aws_route53_record" "www" {
    zone_id = data.aws_route53_zone.selected.zone_id
    name    = var.desired_name
    type    = "CNAME"
    records        = [var.cloudfront_address]
    ttl     = "5"
}