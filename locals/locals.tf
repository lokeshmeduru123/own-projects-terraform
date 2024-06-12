locals {
  
  ami_id = "ami-031d574cddc5bb371"
  sg_id = "sg-0856bac1aaebb35d3"
  instance_type = var.instance_names == "db" ? "t2.small" : "t2.micro"

   tags = {
    Name = "locals"
  }
}