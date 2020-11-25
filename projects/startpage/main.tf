terraform {
  backend "s3" {
    bucket = "misc-justin-davis"
    key    = "startpage-tfstate"
    region = "us-east-1"
  }
}

data "aws_acm_certificate" "cert" {
  domain   = "justinddavis.com"
  statuses = ["ISSUED"]
}

module "start_page" {
    source = "../../modules/static-site-s3-cloudfront-noauth"

    aws_region = "us-east-1"
    site_project_name = "startpage.justinddavis.com"
    price_class = "PriceClass_100"
    oai_identity_comment = "static-site-s3-cloudfront-noauth"

    acm_arn = data.aws_acm_certificate.cert.arn
}

module "set_dns_to_cname" {
    source = "../../modules/arecord_to_cname"

    cloudfront_address = module.start_page.a_record
    hosted_zone = "justinddavis.com."
    desired_name = "startpage"
}