terraform {
  backend "s3" {
    bucket = "trainer-s3-remote-backend"
    key = "wipro-project/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "wipro-trainer-dynamodb-lock1"
  }
}