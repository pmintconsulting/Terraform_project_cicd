resource "aws_instance" "example" {
  ami                    = var.my-os-image
  instance_type          = var.machine_size
  key_name               = var.my_private_key_name
  vpc_security_group_ids = [aws_security_group.sunil-sec-groups.id]
  count                  = var.novm
  # adding security group to ec2 vm(ws)
  tags = {
    Name = "${var.vm_name}-${count.index}"
  }
}
