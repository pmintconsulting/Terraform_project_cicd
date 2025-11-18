# Creating ec2 machine in NV region

resource "aws_instance" "example" {

  ami           = "ami-0cae6d6fe6048ca2c"
  instance_type = "t2.nano"
  key_name = "splunk-key"

  tags = {
    Name = "Sunil-WS"
  }

}