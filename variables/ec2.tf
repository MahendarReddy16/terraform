resource "aws_instance" "terraform" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]

  tags = var.tags
}


resource "aws_security_group" "allow_ssh_terraform" {
  name        = var.sg_name
  description = "Allow ssh port number 22 for ssh access"


   ingress {
        from_port        = var.ingress_from_port
        to_port          = var.ingress_to_port
        protocol         = var.ingress_protocol
        cidr_blocks      = var.ingress_cidr
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

  tags = var.tags
}

