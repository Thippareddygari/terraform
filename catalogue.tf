resource "aws_instance" "catalogue" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0930eb7aaaf6a5468"]  

  tags = {
    Name = "catalogue"
  }

  provisioner "remote-exec" {
    connection {
      type = "ssh"
      user = "ec2-user"
      password = "DevOps321"
      host= self.private_ip
    }
    inline = {
      "sudo pip3.11 install ansible",
      "ansible-pull -i localhost, -u https://github.com/Thippareddygari/ansible-shop.git shop.yml -e component_name=catalogue -e env=dev",
    }
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z10310253KPZLFJOC7YEK"
  type = "A"
  name = "catalogue-dev"
  ttl = 300
  records= [aws_instance.catalogue.private_ip]
}