data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Ubuntu
}

resource "aws_instance" "TerraformLT" {
  ami                         = data.aws_ami.ubuntu.id                              # apontando pro data de ami, para que seja obrigatorio o uso da ami ubuntu
  instance_type               = "t2.micro"                                          # tipo instancia Ec2. T2 micro
  key_name                    = var.key                                             # variable para a nossa chave de acesso via ssh
  count                       = var.environment == "production" ? 1 + var.plus : 1  # o Valor da variavel var.environment é production? se sim sobe2 se nao sobe1
  vpc_security_group_ids      = [aws_security_group.terrassh.id]                    # abrindo porta ssh no arq. security group
  associate_public_ip_address = "true"                                              # liberando ip publico
  subnet_id                    = data.aws_subnet.subnetaula.id                      # Criando Ec2 direcionando pra subnet correta de cada Vpc usando data.
 #vpc_security_group_ids      = ["data.aws_security_group.sg.*.id"]

  tags = {
    Name        = "TerraformLT ${count.index}"  #a aqui vamos colocar numeros na frente do Ec2
   #Name        = "TerraformLT ${var.name}"     # aqui vamos usar um nome [ Server Terra, Interpolação] comando criado la no variables
   }
}

#resource "aws_eip" "ip-publico" {               #
#    vpc      = true                             #
#    instance = aws_instance.TerraformLT[count.index].id      # essa linha nao funcionou pq ela só serve qdo subimos 1 unica Ec2, 
#   #count    = var.servidores                                # distribuindo IP fixo Elastic IP ,
#  
#