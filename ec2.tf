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
  count                       = var.servidores

  tags = {
    Name = "TerraformLT${count.index}"
   }
    associate_public_ip_address = "true"
    subnet_id                    = data.aws_subnet.subnetaula.id 

}

resource "aws_eip" "ip" {
    vpc      = true
    count    = var.servidores  # distribuindo IP fixo Elastic IP ,  
   
}