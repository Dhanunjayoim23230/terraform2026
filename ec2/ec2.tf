resource "aws_instance" "ec2" {
  ami                    = "ami-0220d79f3f480ecf5"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type          = "t3.micro"
  tags = {
    Name = "terraform_demo"
  }

}

resource "aws_security_group" "allow_tls" {
  name        = "Security_group"
  description = " it allows all the traffic in and all teh traffic out"

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
    Name = "allow_tls_group_sg"
  }

}