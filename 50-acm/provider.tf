terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

backend "s3" {
  bucket = "tf-aws-eks-remote-state"
  key = "tf-aws-eks-acm"
  region = "us-east-1"
  dynamodb_table = "tf-aws-eks-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

