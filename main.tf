terraform {
  required_version = "~> 0.13.5"
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Savicki"

    workspaces {
      name = "default"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
