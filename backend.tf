terraform {
  backend "s3" {
    bucket = "gaaraujo-vorx-terraform"
    key    = "jenkins-server.tfstate"
    region = "us-east-1"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.54.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
