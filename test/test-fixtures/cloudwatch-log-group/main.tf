provider "aws" {
  version = "~> 2.0"

  profile = var.profile
  region  = var.region
}

terraform {
  # The configuration for this backend will be filled in by Terragrunt
  backend "s3" {
  }
}

resource "aws_cloudwatch_log_group" "test" {
  name = var.name

  tags = {
    awsweeper = "test-acc"
  }
}