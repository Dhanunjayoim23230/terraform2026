output "ec2_info" {
    value = aws_instance.ec2

}

# output "ec2_info" {
#   value = {
#     for key, instance_type in aws_instance.ec2.["var.instance_type"] :
#     key => {
#       private_ip = aws_instance.ec2["var.instance_type"].private_ip
#       public_ip  = aws_instance.ec2["var.instance_type"].public_ip
#     }
#   }
# }
