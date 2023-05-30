# ap-southeast-2 (Sydney) instance AMIs
# ami-0310483fb2b488153  Ubuntu 22.04 x86
# ami-061c60691199b23b4 Rocky Linux 9 x86
# 

variable "instance_1_ami" {
  description = "Value of the AMI ID for the EC2 instance"
  type        = string
  default     = "ami-061c60691199b23b4"
}
variable "instance_1_type" {
  description = "Value of the Instance Type for the EC2 instance"
  type        = string
  default     = "t3.small"
}
variable "instance_1_name" {
  description = "Value of the Name Tag for the EC2 instance"
  type        = string
  default     = "instance-1"
}

variable instance_key {
  default = "ed25519 from dev/aws/misc"
}

