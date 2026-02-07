resource "aws_route53_record" "domain" {
  ttl             = 1
  count           = 2
  zone_id         = "Z062374329FGUVK9KSE7B"
  name            = "${var.ec2_tags[count.index]}.${var.domain}"
  type            = "A"
  records         = [aws_instance.ec2[count.index].private_ip]
  allow_overwrite = true

}

resource "aws_route53_record" "frontend" {
  ttl = "1"
  #count="${var.tags[2]}"
  #count= length(var.ec2_tags[2])
  zone_id         = "Z062374329FGUVK9KSE7B"
  name            = var.domain
  type            = "A"
  records         = [aws_instance.ec2[2].public_ip]
  allow_overwrite = true

}