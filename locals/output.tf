output "aws_ami" {
  value = data.aws_ami.joindevops.id
  #value = data.aws_ami.joindevops.image_location

}
# output "aws_ami" {
#   #value = [data.aws_ami.joindevops.id] 
#   value = [data.aws_ami.joindevops.image_location]
#   #how we can get multiple values from output block for same data source
# }

output "aws_vpc" {
  value = data.aws_vpc.default.id
}

output "aws_sg" {
  value = data.aws_security_group.sg.id
}