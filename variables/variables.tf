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

variable "tags" {
    default= "terraform_variable_practice"

}

# 1.command line -var "<variable_name>= <variable_value>"
# terraform apply -auto-approve -var "instance_type=t3.micro"
# 2.terraform.tfvars file syntax: instance_type= "t3.micro"
# 3.Environment variables
# export TF_VAR_instance_type=t3.micro
# unset TF_VAR_instance_type
# 4. default value
# 5. Prompt