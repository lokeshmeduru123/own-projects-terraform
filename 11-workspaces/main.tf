resource "aws_instance" "expence" {
    ami = "ami-031d574cddc5bb371"
    vpc_security_group_ids = ["sg-0fbd7c454bc70bbba"]
    instance_type = lookup(var.instance_type, terraform.workspace)


}
