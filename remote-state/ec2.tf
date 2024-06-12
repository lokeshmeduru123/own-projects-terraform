resource "aws_instance" "db" {
    ami = "ami-031d574cddc5bb371"
    vpc_security_group_ids = ["sg-0856bac1aaebb35d3"]
    instance_type = "t2.micro"


 tags = {
    Name = "db"
  }
}