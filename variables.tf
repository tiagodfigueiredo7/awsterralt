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
    default = 3

}