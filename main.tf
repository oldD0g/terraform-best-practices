resource "aws_instance" "instance_1" {
  ami           = var.instance_1_ami
  instance_type = var.instance_1_type
  key_name        = var.instance_key
  tags = {
    Name = var.instance_1_name
  }
  provisioner "local-exec" {
    command    = "echo The IP address of the server is ${self.private_ip}"
    on_failure = continue
  }
}
