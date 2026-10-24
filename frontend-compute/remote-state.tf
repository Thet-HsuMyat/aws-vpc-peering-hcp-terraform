data "terraform_remote_state" "frontend" {
  backend = "remote"

  config = {
    organization = "hsu-hcp-terraform-lab"

    workspaces = {
      name = "frontend-network"
    }
  }
}

data "terraform_remote_state" "backend" {
  backend = "remote"

  config = {
    organization = "hsu-hcp-terraform-lab"

    workspaces = {
      name = "backend-network"
    }
  }
}

data "terraform_remote_state" "backend_security" {
  backend = "remote"

  config = {
    organization = "hsu-hcp-terraform-lab"

    workspaces = {
      name = "backend-security"
    }
  }
}

data "terraform_remote_state" "frontend_security" {
  backend = "remote"

  config = {
    organization = "hsu-hcp-terraform-lab"

    workspaces = {
      name = "frontend-security"
    }
  }
}