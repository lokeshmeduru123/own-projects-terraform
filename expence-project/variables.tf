variable "instance_names" {
    type = list
    default = ["db", "frontend","backend"]
}

variable "common_tags" {
    default = {
        project = "expence"
        environment = "dev"
        terraform = true
    }
  
}

variable "allow_ssh" {
    type = string
    default = "allow_ssh"
}

variable "ami" {
    type = string
    default = "ami-031d574cddc5bb371"
  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
  
}



variable "allow-port-22" {
    default = "22"
  
}

variable "allowed_cidr" {
    default = ["0.0.0.0/0"]
    type = list  
}

# r53-variables

variable "zone_id" {
    default = "Z087282710XX84G9SVF5U"
}

variable "domain_name" {
  
  default = "devops-project.site"
}