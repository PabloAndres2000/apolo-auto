# terraform/production/terraform.tfvars
aws_region = "us-east-1"
vpc_id     = "vpc-123456"
subnet_ids = ["subnet-12345", "subnet-67890"]

rabbitmq_user     = "user"
rabbitmq_password = "password"

rds_username = "admin"
rds_password = "password"
