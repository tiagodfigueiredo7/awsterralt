
output "ip_address" {
  value = join("", aws_instance.TerraformLT[*].id)
}