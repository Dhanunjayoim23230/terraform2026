resource "aws_instance" "ec2" {
  ami                    = var.ami_id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type          = var.instance_type
  tags = var.ec2_tags

}

resource "aws_security_group" "allow_tls" {
  name        = "Security_group_vrushali"
  description = " it allows all the traffic in and all the traffic out"

  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    cidr_blocks = var.cidr_blocks
    protocol    = "tcp"
  }
  egress {
    from_port   = var.from_port
    to_port     = var.to_port
    cidr_blocks = var.cidr_blocks
    protocol    = "tcp"
  }
  tags = {
    Name = "allow_tls_group_sg_vrushali"
  }

}