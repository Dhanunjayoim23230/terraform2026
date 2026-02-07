data "aws_ami" "joindevops" {

  most_recent = true
  owners      = ["973714476881"]
  /* filter {
    name   = "owners"
    values = ["088132334644"]
  } */
  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }
  #   filter {
  #     name   = "ami_id"
  #     values = ["ami-0220d79f3f480ecf5"]
  #   }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

data "aws_vpc" "default" {

  default = true
}

data "aws_security_group" "sg" {
  vpc_id = "vpc-0440b7d47f7562c12"

  # filter {
  #   name = "owner"
  #   values= ["088132334644"]
  # }
  # # owners =[""]

  filter {
    name   = "group-name"
    values = ["All_InAll_Out_SG"]

    # }
    # filter {
    #   name = "security_group_id"
    #   values = ["sg-0097c2842683cecd4"]
    # }
  }
}