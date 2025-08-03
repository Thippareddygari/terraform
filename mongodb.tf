resource "aws_instance" "mongodb" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0930eb7aaaf6a5468"]

  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z10310253KPZLFJOC7YEK"
  type = "A"
  name = "mongodb-dev"
  ttl = 300
  records = [aws_instance.mongodb.private_ip]
}