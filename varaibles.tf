variable "region" {
  description = "The AWS region to deploy the resources in."
  type        = string
  default     = "eu-west-1" # Default region  
}
variable "ami" {
  description = "The AMI ID to use for the instance."
  type        = string
  default     = "ami-03d8b47244d950bbb" # Amazon Linux 2 AMI    

}