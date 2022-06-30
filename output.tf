output "ids"{
value = aws_instance.TerraformLT.*.public_ip
}