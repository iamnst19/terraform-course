terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.30.0"
    }
  }
}


# resource "aws_instance" "myec2" {
#    ami = "ami-06489866022e12a14"
#    instance_type = "t2.micro"
# }

# output "arn" {
#   value = aws_instance.myec2.arn
# }


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

