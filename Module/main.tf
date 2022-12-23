module "s3" {
  source = "../S3_Bucket"
  for_each = var.s3_bucket 
  bucket_name = each.value["bucket-name"]
  tag_name = each.value["tag-name"]
  tag_owner = each.value["tag-owner"]
  tag_purpose = each.value["tag-purpose"]
}

module "ec2_SG" {
  source = "../EC2 & Security Group"
  for_each = var.ec2-security-gp
  ami = each.value["ami"]
  instance_type = each.value["instance_type"]
  tag_name = each.value["tag_name"]
  tag_owner = each.value["tag_owner"]
  tag_purpose = each.value["tag_purpose"]
  name = each.value["name"]
  description = each.value["description"]
  vpc_id = each.value["vpc_id"]
  ingress-rule = each.value["ingress-rule"]
  egress-rule = each.value["egress-rule"]
}