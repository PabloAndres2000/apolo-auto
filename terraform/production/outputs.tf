# terraform/production/outputs.tf
output "cluster_name" {
  value = module.eks.cluster_id
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "node_group_role" {
  value = module.eks.node_groups["default"].iam_role_arn
}
