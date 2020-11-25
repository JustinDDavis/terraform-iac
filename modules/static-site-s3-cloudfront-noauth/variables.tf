variable "aws_region" {
  description = "Region name in AWS"
}

variable "site_project_name" {
  description = "Name unique to your project. This will need to be globally unique."
}

variable "price_class" {
  description = "Options: PriceClass_All, PriceClass_200, PriceClass_100"
}

variable "oai_identity_comment" {
  description = "A comment given to an OAI identity. Provides information to the console"
}

variable "acm_arn" {
  description = "Certificate ARN for CNAME domain"
}
