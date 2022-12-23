resource "aws_s3_bucket" "b" {
    bucket = var.bucket_name
    tags = {
        Name = var.tag_name
        Owner = var.tag_owner
        Purpose = var.tag_purpose
    }
}