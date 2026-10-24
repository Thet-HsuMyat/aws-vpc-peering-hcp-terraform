terraform {
  required_version = ">= 1.12"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
  }
}

terraform {
  cloud {
    organization = "hsu-hcp-terraform-lab"

    workspaces {
      name = "backend-compute"
    }
  }
}