ec2_instances = [
  {
    name          = "web-server"
    ami           = "ami-03d8b47244d950bbb"
    instance_type = "t2.micro"
    volume_size   = 20
    

  },
  {
    name          = "db-server"
    ami           = "ami-03d8b47244d950bbb"
    instance_type = "t2.small"
    volume_size   = 30


  },  {
    name          = "cache-server"
    ami           = "ami-03d8b47244d950bbb"
    instance_type = "t2.micro"
    volume_size   = 10
  }
]
