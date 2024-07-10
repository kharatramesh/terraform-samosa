terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.57.0"
    }
  }
}

provider "aws" {
  access_key = var.akey
  secret_key = var.skey
  region     = var.location
}
