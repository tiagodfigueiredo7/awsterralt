provider "aws" {
  region  = "${terraform.workspace == "default" ? "us-east-2" : "us-east-1"}" # aqui é uma condição para que o Ec2 seja criando dependendo do workspace
}
