variable "ami_id" {
  type        = string
  default     = "ami-0220d79f3f480ecf5"
  description = " this is RHEL ami id"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "ami instance family"

}

variable "ec2_tags" {
  default = ["mysql", "backend", "frontend"] #what is the length of this variable?

}
variable "domain" {
  default = "vrushali.online"
}

#mysql
#backend
#frontend
#mysql.vrusahli.online