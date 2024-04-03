terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.43.0" #aws provider version, not terraform
    }
  }
}

provider "aws" {
  region = "us-east-1"
}