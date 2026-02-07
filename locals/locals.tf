locals {
  instance_type = "t3.micro"
  /* name          = ["${var.tags.project}-${var.tags.environment}-${var.tags.component}"] */
  name          = "${var.project}-${var.environment}-${var.component}"
  
#   ,"${var.tags.project}-${var.tags.environment[1]}-${var.tags.component[1]}","${var.tags.project}-${var.tags.environment[2]}-${var.tags.component[2]}"]

  /* name = flatten([
    for component in var.tags.component : [
      for env in var.tags.environment :
        "${var.tags.project}-${var.tags.component}-${var.tags.environment}"
    ]
  ]) */
  ami_id = data.aws_ami.joindevops.id
}
