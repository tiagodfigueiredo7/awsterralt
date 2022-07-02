data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Ubuntu
}

resource "aws_instance" "TerraformLT" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t2.micro"
  key_name                    = var.key
  count                       = var.environment == "production" ? 1 + var.plus : 1  # o Valor da variavel var.environment é production ? se sim sobe 2 se nao sobe 1
  vpc_security_group_ids      = [aws_security_group.terrassh.id]
 #vpc_security_group_ids      = ["data.aws_security_group.sg.*.id"]

  tags = {
    Name        = "TerraformLT${count.index}"
    Env         =  var.environment2
   }
    associate_public_ip_address = "true"
    subnet_id                    = data.aws_subnet.subnetaula.id 

}

resource "aws_eip" "ip-publico" {
    vpc      = true
    count    = var.servidores  # distribuindo IP fixo Elastic IP ,  
   
}