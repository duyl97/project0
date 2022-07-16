resource "aws_instance" "app_server" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  key_name      = var.key_name

  tags = {
    Name = "App server"
  }
}