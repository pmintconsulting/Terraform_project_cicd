resource "aws_security_group" "sunil-sec-groups" {
  name = "sunil_allow_rules"
  description = "Allow TLS inbound traffice and all outbound traffic"
  vpc_id = data.aws_vpc.sunil-existing-vpc.id

  tags = {
    Name = "sunil_firewall_rules"
  }
}
#allow all outgoing ports for IPV4
resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
    security_group_id = aws_security_group.sunil-sec-groups.id
    cidr_ipv4 = "0.0.0.0/0"
    ip_protocol = "-1" #semantically equivalent to all ports
    from_port   = 22
    to_port     = 80
}