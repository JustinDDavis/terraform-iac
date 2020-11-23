

module "start_page" {
    source = "../../modules/static-site-s3-cloudfront-noauth"

    aws_region = "us-east-1"
    site_project_name = "startpage.justinddavis.com"
    price_class = "PriceClass_100"
    oai_identity_comment = "static-site-s3-cloudfront-noauth"
}