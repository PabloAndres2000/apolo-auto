# terraform/production/eks-cluster.tf
module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = var.vpc_id
  subnet_ids      = var.subnet_ids

  node_groups = {
    default = {
      desired_capacity = 3
      min_size         = 2
      max_size         = 5
      instance_type    = var.instance_type
    }
  }
}
