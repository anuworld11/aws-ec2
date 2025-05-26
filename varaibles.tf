variable "ec2_instances" {
  description = "List of EC2 instance configurations"
  type = list(object({
    name          = string
    ami           = string
    instance_type = string
    volume_size   = number
  
  }))
}

