resource "aws_instance" "instance" {
  //count = length(var.instances)
  //for_each = var.instances

  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = var.name 
  }

}

resource "aws_route53_record" "record" {
  //count = length(var.instances)
  //for_each = var.instances
  zone_id = var.zone_id
  type = "A"
  name = "${var.name}-${var.env}"
  ttl = 300
  records= [aws_instance.instance.private_ip]
}


resource "null_resource" "catalogue" {
  provisioner "remote-exec" {
  connection {
      type = "ssh"
      user = data.vault_generic_secret.ssh.data["username"]
      password = data.vault_generic_secret.ssh.data["password"]
      host= aws_instance.instance.private_ip
    }
    inline = [
      "pip3.11 install ansible",
      "ansible-pull -i localhost, -U https://github.com/Thippareddygari/ansible-shop shop.yml -e component_name=${var.name} 
      -e env=${var.env}" -e vault_token=${var.vault_token},
    ]
  }
  }