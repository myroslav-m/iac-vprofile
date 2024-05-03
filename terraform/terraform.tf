terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.25.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.2"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"
    }
  }

  backend "s3" {
    bucket = "20240503-vpro-devops-buk1703"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }

#  required_version = "~> 1.6.3" # This configuration does not support Terraform version 1.8.2.
  required_version = "~> 1.8.2"
}
##
##
##
