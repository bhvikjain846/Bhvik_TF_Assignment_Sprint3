output "s3_bucket" {
  value = [[for i in var.s3_bucket:i["bucket-name"]], [for i in var.s3_bucket:i["tag-name"]]]
}

output "ec2_intsance" {
  value = [[for i in var.ec2-security-gp:i["instance_type"]], [for i in var.ec2-security-gp:i["tag_name"]]]
}

output "security_group" {
  value = [[for i in var.ec2-security-gp:i["name"]], [for i in var.ec2-security-gp:i["ingress-rule"]]]
}