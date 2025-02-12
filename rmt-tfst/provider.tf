terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "rmt-tfst"
    key = "expense-backend-infra" # you should have unique keys with in the bucket, sme keys should not be used in repos or tf projects
    region = "us-east-1"
    dynamodb_table = "state-locking"

  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}