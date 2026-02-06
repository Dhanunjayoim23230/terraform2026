resource "aws_route53_record" "domain" {
    ttl= 1
    count=length(var.ec2_tags)
    zone_id= "Z062374329FGUVK9KSE7B"
    name= "${var.ec2_tags[count.index]}.${var.domain}"
    type= A
    records=[aws_instance.ec2[count.index].private.ip]
    allow_overwrite= true
  
}

# resource "aws_route53_record" "route533" {
#     ttl= "1"
#     count=var.tags.command[count.index]
#     zone_id= Z062374329FGUVK9KSE7B
#     name= var.ec2_tags[count.index].vrushali.online
#     type="A"
#     records=[aws_instance.ec2[2].public.ip]
#     allow_overwrite= true
  
# }