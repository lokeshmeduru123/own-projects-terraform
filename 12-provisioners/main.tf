resource "aws_instance" "expence" {
    ami = "ami-031d574cddc5bb371"
    vpc_security_group_ids = ["sg-0fbd7c454bc70bbba"]
    instance_type = "t3.micro"

    provisioner "local-exec" {
        command = "echo ${self.private_ip} > private_ips.txt"  # self is nothing but aws_instance.web
      
    }
    

     provisioner "local-exec" {
        command = "ansible-playbook -i private_ips.txt web.yml"  # self is nothing but aws_instance.web
      
    }

}
