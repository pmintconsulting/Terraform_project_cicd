#output section to public ip address of ec2 vm

output "sunil-ws-public-ip" {
  value = aws_instance.example[*].public_ip
}

output "sunil-ws-private-ipaddress" {

  value = aws_instance.example[*].private_ip
}

output "sunil-ws-instance-state" {

  value = aws_instance.example[*].instance_state
}

#resource "local_file" "sunil-ws-public-ip" {
# content  = aws_instance.example[*].public_ip
#filename = "${path.module}/myip.txt"
#}
