variable "ami_id" {
  description = "AMI for ec2 instance"
  default = ""
  type = string
}

variable "instance_type" {
  description = "Instance type for ec2 instance"
  default = ""
  type = string
}