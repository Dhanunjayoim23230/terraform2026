resource "aws_instance" "ec2" {
  ami                    = var.ami_id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type          = var.instance_type
  tags = {
    Name=var.tags
    }

}

resource "aws_security_group" "allow_tls" {
  name        = "Security_group1"
  description = " it allows all the traffic in and all the traffic out"

  ingress {
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "tcp"
  }
  egress {
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "tcp"
  }
  tags = {
    Name = "allow_tls_group_sg30"
  }

}