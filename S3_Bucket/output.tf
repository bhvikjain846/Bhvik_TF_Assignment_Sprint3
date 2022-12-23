output "S3-a" {
  value = [aws_s3_bucket.b.bucket, aws_s3_bucket.b.tags]
}
