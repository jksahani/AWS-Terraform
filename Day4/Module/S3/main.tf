resource "aws_s3_bucket" "this" {
  bucket        = var.bucket
  bucket_prefix = var.bucket_prefix
  force_destroy       = var.force_destroy
}
