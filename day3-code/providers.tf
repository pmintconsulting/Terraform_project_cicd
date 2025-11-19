terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.21.0"
    }
  }

  backend "s3" {
    bucket         = "boa-sunil-terraform-bucket"
    key            = "code/sunil/terraform.tfstate"
    encrypt        = true
    region         = "us-east-1"
    dynamodb_table = "sunil-lock-table"
  }
}

provider "aws" {
  #  Configuration options
  #  access_key = ""
  #  secret_key = ""
  region = var.my_aws_region

}