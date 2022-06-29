provider "aws" {
  region  = count = "${terraform.workspace == "production" ? "us-east-2" : "us-east-1"}" # aqui é uma condição para que o Ec2 seja criando dependendo do workspace
}
