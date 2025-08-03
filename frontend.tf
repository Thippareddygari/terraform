resource "aws_instance" "frontend" {
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = ["sg-0930eb7aaaf6a5468"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z10310253KPZLFJOC7YEK"
  type = "A"
  name = "frontend-dev"
  ttl = 300
  records = [aws_instance.frontend.private_ip]
}

resource "null_resource" "frontend" {
  provisioner "remote-exec" {
    connection {
      type = "ssh"
      user = "ec2-user"
      password = "DevOps321"
      host = aws_instance.frontend.private_ip
    }
    inline = [
      "pip3.11 install ansible",
      "ansible-pull -i localhost, -U https://github.com/Thippareddygari/ansible-shop shop.yml -e component_name=frontend -e env=dev",
    ]
  }
}