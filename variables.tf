# variable "remote_state_key" {}

# variable "remote_state_bucket" {}
variable "ecs_cluster_name" {}
# variable "ecs_domain_name" {}
variable "internet_cidr_block" {}

variable "region" {
  default = "eu-west-1"
}

variable "vpc_cidr" {}

variable "public_subnet_1_cidr" {}

variable "public_subnet_2_cidr" {}

variable "public_subnet_3_cidr" {}

variable "private_subnet_1_cidr" {}

variable "private_subnet_2_cidr" {}

variable "private_subnet_3_cidr" {}
