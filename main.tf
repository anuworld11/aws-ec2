
/*resource "aws_instance" "myfirstinstance" {
  count = 2
  ami           = var.ami # Amazon Linux 2 AMI
  instance_type = "t2.nano"
  
tags = {
    Name = "MyFirstInstance"
}
}*/
module "ec2_instance" {
  source = "./module"

  for_each = { for inst in var.ec2_instances : inst.name => inst }

  name          = each.value.name
  ami           = each.value.ami
  instance_type = each.value.instance_type
  volume_size   = each.value.volume_size
}





  

/*resource "random_id" "rand" {
  byte_length = 8
}

resource "aws_s3_bucket" "mytetsbucket" {
  bucket = "my-test-${random_id.rand.hex}" # Replace with a unique bucket name
  region = "eu-west-1"

  tags = {
    Name = "MyTestBucket"
  }

}*/
resource "aws_s3_bucket" "mybucketbackend" {
  bucket = "my-test-backends301-tfstate" # Replace with a unique bucket name
  region = "eu-west-1"

  tags = {
    Name = "MyTestBucketbackend"
  }

}
/*resource "aws_s3_object" "mydata" {
  bucket = aws_s3_bucket.mytetsbucket.id
  key    = "data.txt"
  source = "mydata.txt"
  region = "eu-west-1"

}*/
/*module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpctest"
  cidr = "10.0.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  
}*/

/*module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  

  name = "single-instance_module"
version = "5.5.0"
  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-eddcdzz4"

  
}*/

