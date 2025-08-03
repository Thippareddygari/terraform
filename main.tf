resource "aws_instance" "instance" {
  //count = length(var.instances)
  for_each = var.instances
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = ["sg-0930eb7aaaf6a5468"]  

  tags = {
    Name = var.instances[each.key]
  }

}

resource "aws_route53_record" "catalogue" {
  //count = length(var.instances)
  for_each = var.instances
  zone_id = var.zone_id
  type = "A"
  name = "${var.instances[each.key]}-${var.env}"
  ttl = 300
  records= [aws_instance.instance[each.key].private_ip]
}


# resource "null_resource" "catalogue" {
#   provisioner "remote-exec" {
#   connection {
#       type = "ssh"
#       user = "ec2-user"
#       password = "DevOps321"
#       host= aws_instance.catalogue.private_ip
#     }
#     inline = [
#       "pip3.11 install ansible",
#       "ansible-pull -i localhost, -U https://github.com/Thippareddygari/ansible-shop shop.yml -e component_name=catalogue -e env=dev",
#     ]
#   }
#   }