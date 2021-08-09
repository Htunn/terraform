terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "DevAdmin"
  region  = "ap-southeast-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0d058fe428540cd89"
  instance_type = "t2.micro"

  tags = {
    Name = "aws_ec2_example"
  }
}