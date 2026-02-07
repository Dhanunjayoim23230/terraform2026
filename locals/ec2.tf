resource "aws_instance" "ec2_instance" {
  ami                    = data.aws_ami.joindevops.id
  instance_type          = local.instance_type
  vpc_security_group_ids = [data.aws_security_group.sg.id]
  tags                   = {
    Name=local.name
  }
}