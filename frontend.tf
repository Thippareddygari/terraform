resource "aws_instance" "frontend" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t2.nicro"

    tags = {
      name = "frontend"
    }
}