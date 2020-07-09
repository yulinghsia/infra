terraform {
  backend "s3" {
    bucket = "micro-frontends-demo-tfstate-222"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  version = "~> 2.7"
  region = "us-east-1"
}

locals {
  site_domain = "demo.letusdoit.design"
}

data "aws_route53_zone" "hosted_zone" {
  name = "letusdoit.design"
}

