# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami
# Data source to get the latest Amazon Linux 2 AMI ID
data "aws_ami" "amazon_linux_2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair
resource "aws_key_pair" "ssh_key" {
  key_name   = "iaas-start"
  public_key = tls_private_key.rsa.public_key_openssh

}
resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "key" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "iaas-start"
}
# https://registry.terraform.io/providers/hashicorp/local/latest/docs/data-sources/file
# data "local_file" "public_key" {
#   filename = "${path.module}/ec2_rsa.pub"
# }