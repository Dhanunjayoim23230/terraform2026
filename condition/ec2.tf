resource "aws_instance" "ec2" {
  
  #count=3
  count=length(var.tags.component)
  ami                    = var.ami_id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type          = var.instance_type=="dev" ? "t3.micro" : "t3.small"
  tags = {
    component=var.tags.component[count.index]
    Name=var.tags.Name
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

output "ec2" {
  value = "aws_instance"
  
}