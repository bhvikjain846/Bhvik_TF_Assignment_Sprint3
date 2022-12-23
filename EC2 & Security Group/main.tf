resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  # security_groups = [aws_security_group.webtraffic.name]

  tags = {
    Name = var.tag_name
    Owner = var.tag_owner
    Purpose = var.tag_purpose
  }
}


resource "aws_security_group" "webtraffic" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    iterator = port
    for_each = var.ingress-rule
    content {
        from_port        = port.value
        to_port          = port.value
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
  }
  dynamic "egress" {
    iterator = port
    for_each = var.egress-rule
    content {
        from_port        = port.value
        to_port          = port.value
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
  }

  tags = {
    Owner = var.tag_owner
    Purpose = var.tag_purpose
  }
}