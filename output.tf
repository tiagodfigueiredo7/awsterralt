output "ip_adress" {                                 # nessa linha queremos mostrar na tela o IP
  value = aws_instance.TerraformLT[count.index]       # nessa linha estamos apontando  para o recurso e o nome do nosso Ec2 
}

