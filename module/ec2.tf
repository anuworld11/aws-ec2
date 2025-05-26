resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = var.instance_type
  

  root_block_device {
    volume_size           = var.volume_size
    volume_type           = "gp2"
    delete_on_termination = true
  }

  tags = {
    Name = var.name
  }
}
