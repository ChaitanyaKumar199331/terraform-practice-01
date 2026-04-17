variable "ami_id" {
  description = "AMI for ec2 instance"
  default = "ami-098e39bafa7e7303d"
  type = string
}

variable "instance_type" {
  description = "Instance type for ec2 instance"
  default = "t3.micro"
  type = string
}