resource "aws_instance" "frontend" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0930eb7aaaf6a5468"]
    tags = {
      Name = "frontend"
    }
}