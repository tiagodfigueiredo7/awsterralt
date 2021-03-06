resource "aws_instance" "TerraformLT" {
  ami           = var.image_id
  instance_type = "t2.micro"
  key_name      = var.key
  count         = var.servidores

  tags = {
    Name = "TerraformLT${count.index}"
  }
}
  

resource "aws_eip" "ip" {
  vpc = true
  instance = aws_instance.TerraformLT.id
}
