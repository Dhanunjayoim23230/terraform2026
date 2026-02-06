variable "ami_id" {
    type= string
    default= "ami-0220d79f3f480ecf5"
    description=" this is RHEL ami id"
}

variable "instance_type" {
    type= string
    # default = "t3.micro"
    description = "ami instance family"
  
}

variable "ec2_tags" {
    default= {
        Name="terraform_variable_practice"
    }
}

variable "from_port" {
    type = number
    default = "22"
}

variable "to_port" {
    type = number
    default = "22"
}

variable "cidr_blocks" {
    type = list(string)
    default = [ "0.0.0.0/0" ]
  
}


# 1.command line -var "<variable_name>= <variable_value>"
# terraform apply -auto-approve -var "instance_type=t3.micro"
# 2.terraform.tfvars file syntax: instance_type= "t3.micro"
# 3.Environment variables
# export TF_VAR_instance_type=t3.micro
# unset TF_VAR_instance_type
# 4. default value
# 5. Prompt