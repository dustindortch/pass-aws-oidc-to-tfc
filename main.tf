terraform {
  required_version = "~> 1.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {}

data "aws_caller_identity" "ctx" {}

output "account_id" {
  value = data.aws_caller_identity.ctx.account_id
}
