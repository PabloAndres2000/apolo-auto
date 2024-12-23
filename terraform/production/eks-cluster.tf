provider "aws" {
  region = var.aws_region
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = aws_vpc.eks_vpc.id
  subnet_ids      = [aws_subnet.eks_subnet.id]

  node_groups = {
    default = {
      desired_capacity = 2
      min_size         = 1
      max_size         = 3
      instance_type    = var.instance_type
    }
  }
}
