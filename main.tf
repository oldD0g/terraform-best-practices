resource "aws_key_pair" "terraform_best_practices_demo" {
  key_name   = "tbp-demo-key-${terraform.workspace}"
  public_key = file("../misc/id_ed25519_aws_2023.pub")
}

resource "aws_instance" "instance_1" {
  ami           = var.instance_1_ami
  instance_type = var.instance_1_type

  # Previously I had this variable set to a key I'd already imported in the AWS console,
  #  and named it here using the actual name that the AWS console uses
  #  i.e. the name that I set when creating/importing the key
  #key_name        = var.instance_key

  # This approach from the tutorial pulls in the public key from the file,
  #  and creates a new key with those contents.
  # In the AWS console, the new key name is "tbp-demo-key"
  key_name = aws_key_pair.terraform_best_practices_demo.key_name

  tags = {
    Name        = "${terraform.workspace}-${var.instance_1_name}"
    Environment = var.environment
  }
  provisioner "local-exec" {
    command    = "echo The IP address of the server is ${self.private_ip}"
    on_failure = continue
  }
}
