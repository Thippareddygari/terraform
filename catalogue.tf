resource "aws_instance" "catalogue" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0930eb7aaaf6a5468"]  

  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z10310253KPZLFJOC7YEK"
  type = "A"
  name = "catalogue-dev"
  ttl = 300
  records= [aws_instance.catalogue.private_ip]
}