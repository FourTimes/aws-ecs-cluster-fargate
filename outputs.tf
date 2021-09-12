
# output "ecs_alb_listener_arn" {
#   value = aws_alb_listener.ecs_alb_https_listener.arn
# }

output "ecs_cluster_name" {
  value = aws_ecs_cluster.production-fargate-cluster.name
}

output "ecs_cluster_role_name" {
  value = aws_iam_role.ecs_cluster_role.name
}

output "ecs_cluster_role_arn" {
  value = aws_iam_role.ecs_cluster_role.arn
}

# output "ecs_domain_name" {
#   value = var.ecs_domain_name
# }

output "vpc_id" {
  value = aws_vpc.production-vpc.id
}

output "vpc_cidr_block" {
  value = aws_vpc.production-vpc.cidr_block
}

output "public-subnet-1_id" {
  value = aws_subnet.public-subnet-1.id
}

output "public-subnet-2_id" {
  value = aws_subnet.public-subnet-2.id
}

output "public-subnet-3_id" {
  value = aws_subnet.public-subnet-3.id
}

output "private-subnet-1_id" {
  value = aws_subnet.private-subnet-1.id
}

output "private-subnet-2_id" {
  value = aws_subnet.private-subnet-2.id
}

output "private-subnet-3_id" {
  value = aws_subnet.private-subnet-3.id
}

