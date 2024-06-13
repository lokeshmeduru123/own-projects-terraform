#Create a SG to poen ports , 22,80,3306,8080 


resource "aws_security_group" "allow_ports" {
  name        = "allow_ports"
  description = "Allowing port 22,80,3306,8080"

dynamic "ingress" {
    for_each = var.inbound_rules
    content {
        from_port        = ingress.value["port"]
        to_port          = ingress.value["port"]
        protocol         = ingress.value["protocol"]
        cidr_blocks      = ingress.value["allowed_cidr"]
    
    }
    
  }

egress {
    from_port        = 0
    to_port          = 0
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "allowing_ports"
    CreatedBy = "lokesh"
  }
}

