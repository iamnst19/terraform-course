### Important Note

Note that every region has a different AMI ID. The AMI ID's keeps on changing so make sure you use the latest AMI ID from the AWS console similar to the way it is shown in the video.

### Documentation Referred:

https://registry.terraform.io/

https://registry.terraform.io/providers/hashicorp/aws/latest/docs

### first_ec2.tf

```sh
provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "myec2" {
   ami = "ami-06489866022e12a14"
   instance_type = "t2.micro"
}
```
### Commands:

```sh
terraform init
terraform plan
terraform apply
```
