provider "local" {
  
}

resource "local_file" "foo" {
  content = "test"
  filename = "test"
}

variable "x" {
    default = 10
}

output "x" {
  value = var.x
}

variable "x1" {
    default = "Hello"
}
output "x1" {
  value = "Value of x ${var.x1}"
}

#List of variables 
variable "y" {
  default = [1,"hello",0.3,false]
}

output "y" {
  value = "List of values ${var.y[3]}"
}

#Map values
variable "z" {
  default = {
    name="zbc"
    age=20
  }
}

output "z" {
  value = "Name ${var.z["name"]}, age - ${var.z.age}"
}


variable "input" {
  
}
output "input" {
  value = var.input
}

#auto.tfvars
variable "class" {
  
}

output "class" {
  value = var.class
}

variable "trainer" {
  
}
output "trainer" {
  value = var.trainer
}