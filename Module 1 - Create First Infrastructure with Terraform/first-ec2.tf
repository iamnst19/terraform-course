terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
      }
    }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA33CHTBYXMOCUEFFC"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
   ami = "ami-06489866022e12a14"
   instance_type = "t2.micro"
}


# provider "github" {
#   token = ""
# }

# resource "github_repository" "example" {
#   name        = "tf-new"
#   description = "My awesome codebase"

#   visibility = "private"

# }

# terraform {
#   required_providers {
#     digitalocean = {
#       source = "digitalocean/digitalocean"
#       version = "2.22.3"
#     }
#   }
# }

# provider "digitalocean" {

# }

