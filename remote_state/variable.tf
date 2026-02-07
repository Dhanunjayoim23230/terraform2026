/* variable "tags" {
  default = {
    project     = "Expense"
    environment = ["dev", "prod"]
    component   = ["mysql", "backend", "frontend"]
    # component   = "mysql"
    
    # environment = "dev"
    # Name : "terraform is true"
  }
} */

variable "project" {
  default = "Expense"
}
variable "component" {
  default = "mysql"
}
variable "environment" {
  default = "dev"
}


variable "instance_type" {
  default = "t3.small"
}