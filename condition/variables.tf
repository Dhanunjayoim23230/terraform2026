variable "ami_id" {
  type        = string
  default     = "ami-0220d79f3f480ecf5"
  description = " this is RHEL ami id"
}

variable "environment_type" {
  type = string
  #default = "dev"
  description = "ami instance family"

}

variable "tags" {
  #default= ["mysql", "backend", "frontend","ansible"]
  default = {
    project     = "Expense"
    Environment = "dev"
    component   = ["mysql", "backend", "frontend", "ansible"]
    Name        = "Expense-backend-dev"
  }
}

#mysql
#backend
#frontend