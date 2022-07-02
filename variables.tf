variable "image_id" {                          # Variable da imagem do ubuntu, para subir as ec2 ( no momento nao usado por causa do data no arq. ec2)
  default = "ami-02ccb28830b645a41"
  type = string
  description = "essa variavel é um ID de imagem que sera usado no servidor Ec2."
}


variable "key" {
    default = "terraform-aws"                  # variable para adicionar a chave terraform-aws na ec2 para acesso sssh 

}



variable "servidores" {                         # ? 
    type    = number
    default = 1

}


variable "environment" {                        # essa variavel muda a quantidade de maquinas que sobe de acordo com a conf do arquivo ec2.tf, 
    default = "production"                        # se for production esta selecionado 2 pelo arquico ec2, qualquer outra coisa ex: default é 1 Ec2

}

variable "plus" {                              # aqui é uma variable que soma um numero para adicionar mais Ec2's       
    default = 3 

}

variable "terrassh" {
  type        = list(string)                    # Variable para var.terrassh
  default     = []
 }

 variable name {
   type        = string                         # variable para dar nome nas tag das Ec2
   default     = "Server Terra"
   description = "aprendendo e add interpolacao TerraformLT"
 }
 