# VPC Module
module "vpc" {
  source = "./modules/vpc"

  vpc_name        = var.vpc_name
  vpc_cidr        = var.vpc_cidr
  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
  cluster_name    = var.cluster_name

  tags = var.tags
}

# EKS Cluster Module
module "eks_cluster" {
  source = "./modules/eks-cluster"

  cluster_name = var.cluster_name
  cluster_version = var.cluster_version
  subnet_ids   = concat(module.vpc.private_subnets, module.vpc.public_subnets)

  tags = var.tags
}


