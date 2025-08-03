resource "null_resource" "dummy" {
    count = length((var.x))

    provisioner "local-exec" {
      command = "echo ${var.x}[0]"
    }
}



variable "x" {
  default = [1,200,300,400]
}