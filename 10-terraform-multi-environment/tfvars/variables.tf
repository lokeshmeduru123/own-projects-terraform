variable "common_tags" {
    type = map
    default = {
        project = "expence"
        terraform = true
    }  
}

variable "instance_names" {
    # type = map
    # default = {
    #     frontend-dev = "t3.micro"
    #     db-dev = "t3.small"
    #     backend-dev = "t3.micro"
    # }  
}

variable "environment" {
    # default = "dev"
  
}

# r53-variables

variable "zone_id" {
    default = "Z087282710XX84G9SVF5U"
}

variable "domain_name" {
  
  default = "devops-project.site"
}