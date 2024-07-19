resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = local.common_tags
}

resource "aws_s3_object" "s3_object" {
  bucket       = aws_s3_bucket.my-test-bucket.bucket
  key          = "config/${local.ip_filepath}"
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  content_type = "application/json"
  tags         = local.common_tags

}

resource "aws_s3_object" "random" {
  bucket       = aws_s3_bucket.my-test-bucket.bucket
  key          = "config/${random_pet.bucket.id}.json"
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  content_type = "application/json"
  tags         = local.common_tags

}