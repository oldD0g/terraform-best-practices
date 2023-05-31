output "instance_1_id" {
    description = "The ID of instance_1"
    value = try(aws_instance.instance_1.id)
}

output my_instance_id {
    description = "The instance ID"
    value = aws_instance.instance_1.id
}

output my_instance_ami {
    description = "The AMI used for the instance"
    value = aws_instance.instance_1.ami
}
