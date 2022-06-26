resource "aws_instance" "TerraformLT" {
  ami           = var.image_id
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformLT"
  }
}
