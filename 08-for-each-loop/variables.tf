variable "common_tags" {
    type = map
    default = {
        project = "expence"
        terraform = true
    }  
}

variable "instance_names" {
    type = map
    default = {
        frontend = "t3.micro"
        db = "t3.small"
        backend = "t3.micro"
    }  
}

# r53-variables

variable "zone_id" {
    default = "Z087282710XX84G9SVF5U"
}

variable "domain_name" {
  
  default = "devops-project.site"
}