resource "aws_security_group" "allow_ssh" {
  name        = var.allow_ssh
  description = "Allow port22"

egress {
    from_port        = var.allow-port-22 
    to_port          = var.allow-port-22
    protocol         = "TCP"
    cidr_blocks      = var.allowed_cidr
    
  }

egress {
    from_port        = 0
    to_port          = 0
    protocol         = "TCP"
    cidr_blocks      = var.allowed_cidr
    
  }

  tags = {
    Name = "ssh port"
  }
}

resource "aws_instance" "db" {
    ami = var.ami
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = var.instance_type == "db" ? "t2.mircro" : "t2.small"
    
}

