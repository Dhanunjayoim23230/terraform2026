resource "aws_instance" "ec2" {
    for_each =var.instance_type
    ami ="ami-0220d79f3f480ecf5"
    vpc_security_group_ids=["aws_vpc_security_group.all.id"]
    instance_type=each.var.instance_type.value
    tags ={
        Name= each.var.instance_type.key
    }
}

resource "aws_vpc_security_group" "all" {
Name= "for each loop practice"
Description= " for each loop practice"

ingress{

}
egress{


}

}