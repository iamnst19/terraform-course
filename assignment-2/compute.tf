resource "aws_instance" "public_server" {
  ami           = data.aws_ami.amazon_linux_2.id
  instance_type = "t2.micro"
  key_name      = "test-kh1"
  # put this server in subnet in zone a
  subnet_id              = aws_subnet.kh_public_subnet.id
  vpc_security_group_ids = [aws_security_group.ssh_allowed.id]
  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install nginx -y
              sudo service nginx start
              EOF
  tags = {
    Name = "public-server"
  }

  volume_tags = {
    Name = "public-server"
  }
}
resource "aws_instance" "private_server" {
  ami           = data.aws_ami.amazon_linux_2.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.ssh_key.id
  # put this server in subnet in zone c
  subnet_id              = aws_subnet.kh_private_subnet.id
  vpc_security_group_ids = [aws_security_group.ssh_allowed.id]

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install nginx -y
              sudo service nginx start
              EOF

  tags = {
    Name = "private-server"
  }

  volume_tags = {
    Name = "private-server"
  }
}