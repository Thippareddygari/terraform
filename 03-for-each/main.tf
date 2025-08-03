resource "null_resource" "test" {
  for_each = var.x

  provisioner "local-exec" {
    command = "echo value of ${each.key} = ${each.value}"
  }
}

variable "x" {
  default = {
    j = 200
    i = 100

  }
}