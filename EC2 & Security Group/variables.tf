variable "ami" {
  type = string
} 
variable "instance_type" {
  type = string
}


variable "tag_name" {
  type = string
}
variable "tag_owner" {
  type = string
}
variable "tag_purpose" {
  type = string
}


variable "name" {
  type = string
}
variable "description" {
  type = string
}
variable "vpc_id" {
  type = string
}
variable "ingress-rule" {
  type = list(number)
}
variable "egress-rule" {
  type = list(number)
}