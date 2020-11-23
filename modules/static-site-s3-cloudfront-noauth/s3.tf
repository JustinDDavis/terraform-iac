resource "aws_s3_bucket" "site_asset_storage" {
  bucket  = var.site_project_name

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}