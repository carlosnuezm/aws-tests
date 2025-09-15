module "vpc" {
  source = "../modules/vpc"
}

module "eks" {
  source = "../modules/eks"
  aws_subnet_az1_id = module.vpc.eks-subnet-private-us-west-2a.id
  aws_subnet_az2_id = module.vpc.eks-subnet-private-us-west-2b.id
  aws_subnet_az3_id = module.vpc.eks-subnet-private-us-west-2c.id
}