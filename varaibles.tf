variable "region" {
  description = "The AWS region to deploy the resources in."
  type        = string
  default     = "us-east-1" # Default region  
}
variable "ami" {
  description = "The AMI ID to use for the instance."
  type        = string
  default     = "ami-0953476d60561c955" # Amazon Linux 2 AMI    

}