resource "aws_instance" "terraform" {
  ami           = "ami-0eec78ea4cbaaf5bd"
  instance_type = var.evironment == "Prod" ? "t3.small" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]

  tags = {
    Name = "terraform"
  }
}

resource "aws_security_group" "allow_ssh_terraform" {
  name        = "allow_sshd"
  description = "Allow ssh port number 22 for ssh access"


   ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
  }

  # Usually we allow everything in egress

   egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"] #allow everyone
        ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow-sshh"
  }
}


