

resource "aws_instance" "expence" {
    for_each = var.instance_names
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-0fbd7c454bc70bbba"]
    instance_type = each.value
    tags = merge (
        var.common_tags,
        {
            Name = each.key
            module = each.key
        }  
    )
}
