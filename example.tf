# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.91.0"
#     }
#   }
# }

# provider "aws" {
#   region  = "us-east-1"
# }

# resource "aws_instance" "example" {
#   #ami  = "ami- key here "
#   instance_type = "t2.micro"
# }

# variable "AWS_ACCESS_KEY_ID" {
#   type = string
#   description = "Acess key id"
# }

# variable "AWS_SECRET_ACCESS_KEY" {
#   type = string 
#   description = "Secret access key"

# }

# variable "AWS_SESSION_TOKEN" {
#   type = string
#   description = "Sesssion token"
  
# }

terraform {
  cloud {
    organization = "IT3110_beckstrand"

    workspaces {
      name = "IT3110-terraform"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.91.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-0002aa94448fb4b15"
  instance_type = "t2.micro"
}
