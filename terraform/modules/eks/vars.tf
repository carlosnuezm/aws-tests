variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "aws_subnet_az1_id" {
  description = "The ID of the subnet in availability zone 1"
  type        = string
}

variable "aws_subnet_az2_id" {
  description = "The ID of the subnet in availability zone 2"
  type        = string
}

variable "aws_subnet_az3_id" {
  description = "The ID of the subnet in availability zone 3"
  type        = string
}