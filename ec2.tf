data "aws_ami" "ubuntu" {           # essa linha pergunta pra Aws que queremos uma imagem! (aws_ami) qual queremos ? "ubuntu"
  most_recent = true                # aqui estamos falando que queremos a mais recente -> true

  filter {                          # esse filtro simples, baseado no NOME!
    name   = "name"                 # queremos buscar o NOME
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]  # essa linha diz que queremos buscar lá uma AMI baseado no nome a mais recente
  }

  owners = ["099720109477"]         # aqui diz que é pra buscar a AMI baseado apenas nesse dono ["099720109477"]  = UBUNTU               
}

resource "aws_instance" "Terraform-TL" {
  ami           = data.aws_ami.ubuntu.id     # essa linha é uma referencia a 1 linha
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-TL"
  }
}