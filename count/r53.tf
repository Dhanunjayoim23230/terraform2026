# resource "aws_vpc_route53_record" "route53" {
#     ttl= "1"
#     count=var.tags.command[count.index]
#     zone_id=
#     name=
#     type="A"
#     records=[aws_instance.ec2[count.index].private.ip]
#     allow_overwrite=
  
# }