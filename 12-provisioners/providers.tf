terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.48.0"
  }
}
backend "s3" {
    bucket = "devops-project.site-state"
    key    = "devops-project.site-state-provisioners"
    region = "us-east-1"
    dynamodb_table = "devops-project.site-state-locking"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}