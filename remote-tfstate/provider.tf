terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "expense-dev-tfstate"
    key = "expense-dev-infra" # you should have unique keys with in the bucket, sme keys should not be used in repos or tf projects
    region = "us-east-1"
    encrypt = true
    use_lockfile = true

  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}