output "subnet_ids" {
  description = "Endpoint for EKS control plane"
  value       = [aws_vpc.aws_subnet.eks-subnet-private-us-west-2a.id]
}