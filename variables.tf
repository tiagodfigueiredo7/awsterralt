variable "image_id" {
  default = "ami-02ccb28830b645a41"
  type = string
  description = "essa variavel é um ID de imagem que sera usado no servidor Ec2."
}


variable "key" {
    default = "terraform-aws"

}



variable "servidores" {
    type    = number
    default = 1

}


variable "environment" {                 # essa variavel muda a quantidade de maquinas que sobe de acordo com a conf do arquivo ec2.tf, 
    default = "production"                        # se for production esta selecionado 2 pelo arquico ec2, qualquer outra coisa ex: default é 1 Ec2

}

variable "plus" {
    default = 1

}

variable "environment2" {
    type        = string                          # string = string é uma sequência de caracteres, geralmente utilizada para representar palavras
    default     = "staging"
    description = "the environment of instance"
}


variable "terrassh" {
  type        = list(string)
  default     = []
 }