
#   Output as a map (most common & clean)
output "aws_ami" {
  value = {
    id= data.aws_ami.joindevops.id
  image_location = data.aws_ami.joindevops.image_location
  }
}

# Output as a list
output "aws_ami_value" {
  value = [
    data.aws_ami.joindevops.id,
    data.aws_ami.joindevops.image_location
  ]
}


# Separate outputs (very explicit) Best when other modules need to consume them individually.
output "aws_ami_id" {
  value = data.aws_ami.joindevops.id
}

output "aws_ami_image_location" {
  value = data.aws_ami.joindevops.image_location
}



output "aws_vpc" {
  value = data.aws_vpc.default.id
}