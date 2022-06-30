data "aws_subnet" "subnetaula" {
     id = "${terraform.workspace == "default" ? "subnet-023d69f80450b78bf" : "	subnet-066b38f42f29c10fe"}"

}


