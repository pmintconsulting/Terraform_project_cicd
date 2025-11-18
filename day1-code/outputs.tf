#output section to public ip address of ec2 vm

output "my-ec2-public-ipaddress" {

  value = aws_instance.example.public_ip

}
output "my-ec2-private-ipaddress" {
  
  value = aws_instance.example.private_ip
}

output "my-ec2-instance-state" {

    value = aws_instance.example.instance_state
}
