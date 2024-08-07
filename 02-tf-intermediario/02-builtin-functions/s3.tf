resource "random_pet" "bucket" {
  length = 5
}

resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = local.common_tags
}

resource "aws_s3_object" "s3_object" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "${uuid()}.${local.file_ext}"
  source       = data.archive_file.json.output_path
  etag         = filemd5(data.archive_file.json.output_path)
  content_type = "application/json"
  tags         = local.common_tags

}