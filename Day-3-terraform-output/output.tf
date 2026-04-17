
output "vpc_id" {
  value = aws_vpc.name.id
}

output "subnet_id" {
    value = aws_subnet.name.id
}



output "public_ip" {
  value = aws_instance.name.public_ip
}

output "private_ip" {
  value = aws_instance.name.private_ip
}
