output "output_instance_public_ip" {
  value = aws_instance.myfirstinstance.public_ip
}
  
output "name_of_s3_bucket" {
  value = aws_s3_bucket.mytetsbucket.bucket
  
}