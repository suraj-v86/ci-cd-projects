resource "aws_instance" "server" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = var.subnet

    tags = {
      name = "Server"
    }
  
}

output "instance_public_id" {
    value = aws_instance.server.public_ip
  
}