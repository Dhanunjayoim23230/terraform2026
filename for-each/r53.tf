resource "aws_route53_record" "route53"{
    for_each = aws_instance.ec2
zone_id = "Z062374329FGUVK9KSE7B"
  type    = "A"
  ttl     = 1
  name    = each.key == "frontend" ? "vrushali.online" : "${each.key}.vrushali.online"
  records = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
}