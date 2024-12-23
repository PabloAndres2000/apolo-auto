# terraform/production/variables.tf
variable "aws_region" {
  description = "AWS region for the cluster"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS Cluster name"
  default     = "prod-cluster"
}

variable "cluster_version" {
  description = "Kubernetes version for EKS"
  default     = "1.23"
}

variable "vpc_id" {
  description = "VPC ID for the cluster"
}

variable "subnet_ids" {
  description = "Subnets for the cluster"
  type        = list(string)
}

variable "instance_type" {
  description = "Instance type for EKS node groups"
  default     = "t3.medium"
}

variable "rabbitmq_user" {
  description = "Default RabbitMQ user"
}

variable "rabbitmq_password" {
  description = "Default RabbitMQ password"
}

variable "rds_username" {
  description = "RDS username"
}

variable "rds_password" {
  description = "RDS password"
}
