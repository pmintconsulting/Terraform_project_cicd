resource "aws_security_group" "Sunil_group" {

name = "sunil_allow_rules"
description = "Allow TLS inbound traffic and all outbound traffic"
vpc_id = data.aws_vpc.sunil-existing-vpc.id

tags = {
  Name = "sunil-firewall_rules"
}
}

