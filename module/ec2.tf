resource "aws_instance" "myfirstinstance" {
  count = 2
  ami           = var.ami # Amazon Linux 2 AMI
  instance_type = "t2.nano"
  
tags = {
    Name = "MyFirstInstance"
}
}