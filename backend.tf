terraform {
    backend "s3" {
        bucket          = "terraform-tfstate-codepipeline"
        encrypt         = true
        key             = "terraform.tfstate"
        region          = "us-east-1"
        profile         = "personal"
    }

    required_providers {
        aws = {
            source      = "hashicorp/aws"
            version     = "~> 3.0"
        }
    }
}