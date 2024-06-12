resource "aws_instance" "expence" {
    count = length(var.instance_names)
    ami = var.ami
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = var.instance_names[count.index] == "db" ? "t3.small" : "t3.micro"
    tags = merge(
     var.common_tags,
     {
        Name = var.instance_names[count.index]
        module = var.instance_names[count.index]
     }

    ) 
}

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