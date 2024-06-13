variable "allow_ssh" {
    type = string
    default = "allow_ssh"
}

variable "ami" {
    type = string
    default = "ami-031d574cddc5bb371"
  
}



variable "allow-port-22" {
    default = "22"
  
}

variable "allowed_cidr" {
    default = ["0.0.0.0/0"]
    type = list  
}

variable "instance_type" {
    default = "db"
  
}