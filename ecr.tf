resource "aws_ecr_repository" "ecr_terraform" {
    name = "ecr-terraform"

    tags = {
        CreatedBy   = "msaavedra91"
        Environment = "dev"
    }
}