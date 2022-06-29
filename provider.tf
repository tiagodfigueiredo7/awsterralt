provider "aws" {
  region  = count = "${terraform.workspace == "production" ? "us-east-2" : "us-east-1"}"
}
