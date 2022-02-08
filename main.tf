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