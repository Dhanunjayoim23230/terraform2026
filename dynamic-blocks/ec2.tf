resource "aws_instance" "ec2" {
    ami="ami-0220d79f3f480ecf5"
    vpc_security_group_ids = [aws_security_group.all.id]
    instance_type="t3.micro"
    tags= {
        Name= "Dynamic blocks"
    }
}

resource "aws_security_group" "all" {
name="Dynamic block SG"
description="Dynamic block security group"


dynamic "ingress"{
for_each = var.ingress
content {
    from_port=ingress.value["from_port"]
    to_port=ingress.value["to_port"]
    protocol=ingress.value["protocol"]
    cidr_blocks=ingress.value["cidr_blocks"]
}
}

egress {
    from_port = 0
    to_port= 0
    protocol= "tcp"
    cidr_blocks=["0.0.0.0/0"]
}
tags= {
    Name= "Dyanmic blocks security group"
}

}