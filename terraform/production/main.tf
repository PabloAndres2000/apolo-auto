# terraform/production/main.tf
provider "aws" {
  region = var.aws_region
}

module "eks" {
  source          = "./eks-cluster.tf"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = var.vpc_id
  subnet_ids      = var.subnet_ids
}
