output "EC2" {
  value = [aws_instance.web.instance_type, aws_instance.web.tags]
}
output "SG" {
  value = [aws_security_group.webtraffic.name, aws_security_group.webtraffic.ingress]
}