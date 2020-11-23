output "a_record" {
  value = aws_cloudfront_distribution.cdn_distribution.domain_name
}