provider "aws" {
  profile    = "personal"
  region     = "us-east-1"
}

resource "aws_s3_bucket" "tf_codepipeline_bucket" {
  bucket = "terraform-tfstate-codepipeline"
  acl    = "private"

  tags = {
    CreatedBy   = "msaavedra91"
    Environment = "dev"
  }
}

resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}