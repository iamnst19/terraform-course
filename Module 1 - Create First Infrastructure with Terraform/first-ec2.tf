provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "myec2" {
   ami = "ami-06489866022e12a14"
   instance_type = "t2.micro"
}


provider "github" {
  token = ""
}

resource "github_repository" "example" {
  name        = "tf-new"
  description = "My awesome codebase"

  visibility = "private"

}

