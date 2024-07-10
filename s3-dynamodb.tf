# resource "aws_s3_bucket" "trainer-s3-remote-backend" {
#   bucket = "trainer-s3-remote-backend"
#   tags = {
#      "purpose" ="storing tfstate file"
#   }
# }

# resource "aws_dynamodb_table" "dynamo" {
#   name         = "wipro-trainer-dynamodb-lock1"
#   hash_key     = "LockID"
#   billing_mode = "PAY_PER_REQUEST"
#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }

resource "aws_s3_bucket" "trainer-s3-remote-backend11" {
  bucket = "trainer-s3-remote-backend11"
  tags = {
     "purpose" ="storing tfstate file11"
  }
}
