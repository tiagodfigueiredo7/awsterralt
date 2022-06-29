terraform {
  backend "s3" {
    bucket = "tiago-terraform-tfstate"
    key    = "awsterralt"
    region = "us-east-2"
    DynamoDB = "DynamoDB Terraform"
  }
}

