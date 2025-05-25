/*resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "my-dynamodb-table_state"
  billing_mode   = "PAY_PER_REQUEST" # Use PAY_PER_REQUEST for on-demand capacity
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}*/

  