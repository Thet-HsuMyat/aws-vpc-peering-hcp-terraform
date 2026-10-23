terraform {
  required_version = ">= 1.12"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0.0"
    }
  }
}

terraform {
  cloud {
    organization = "Learning-Terraform-TSM"

    workspaces {
      name = "backend-network"
    }
  }
}
