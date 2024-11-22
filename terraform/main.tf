provider "aws" {
  region = var.region
}
terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.53.0"
    }
    helm = {
      source  = "hashicorp/helm"

    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      
    }
  }
}



#aws eks update-kubeconfig --region us-east-1 --name eks


module "eks_vpc" {
  source  = "./eks/"
}