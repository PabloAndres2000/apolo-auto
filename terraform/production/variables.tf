# terraform/production/variables.tf
variable "aws_region" {
  default = "us-east-1"
}

variable "cluster_name" {
  default = "prod-cluster"
}

variable "cluster_version" {
  default = "1.23"
}

variable "vpc_id" {}
variable "subnet_ids" {
  type = list(string)
}

variable "instance_type" {
  default = "t3.medium"
}
