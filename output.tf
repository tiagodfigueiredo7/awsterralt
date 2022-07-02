output "ip_address"{
#value = aws_instance.TerraformLT.*.public_ip             [codigo antigo que funciona]
value = {
 for instance in aws_instance.TerraformLT:
 instance.id => instance.public_ip                    # esse novo value funciona de um jeito interessante, pq ele vai trazer tanto o ip qto o id das Ec2

}
}