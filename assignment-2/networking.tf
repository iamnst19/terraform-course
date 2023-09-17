resource "aws_vpc" "kh_vpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_support = "true"
    enable_dns_hostnames = "true"

    tags = {
        Name = "kh-vpc"
    }
}

resource "aws_subnet" "kh_public_subnet" {
    vpc_id = "${aws_vpc.kh_vpc.id}"
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true" # This is what makes it a public subnet
    availability_zone = "us-east-1a"
    tags = {
        Name = "kh-subnet-public"
    }
}

resource "aws_subnet" "kh_private_subnet" {
    vpc_id = "${aws_vpc.kh_vpc.id}"
    cidr_block = "10.0.2.0/24"
    availability_zone = "us-east-1a"
    tags = {
        Name = "kh-subnet-private"
    }
}
