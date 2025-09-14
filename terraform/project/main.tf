terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "aws-terraform-cnunez"
    key    = "tests/project.tfstate"
    region = "us-west-2"
  }
}