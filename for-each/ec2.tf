resource "aws_instance" "ec2" {
  
  ami                    = "ami-0220d79f3f480ecf5"
  vpc_security_group_ids = [aws_security_group.all.id]
  for_each               = var.instance
  instance_type          = each.value
  tags = {
    Name = each.key
  }
}

resource "aws_security_group" "all" {
  name        = "for each loop practice"
  description = " for each loop practice"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}