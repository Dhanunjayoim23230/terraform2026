variable "ami_id" {
    type= string
    default= "ami-0220d79f3f480ecf5"
    description=" this is RHEL ami id"
}

variable "instance_type" {
    type= string
    default = "t3.micro"
    description = "ami instance family"
  
}

variable "tags" {
    default= ["mysql", "backend", "frontend","ansible"]

}

#mysql
#backend
#frontend