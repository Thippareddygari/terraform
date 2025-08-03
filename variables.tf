variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
    }

variable "instance_type" {
    default = "t2.micro"
}

variable "instances" {
  default = {
    catalogue= null
    mongodb= null
    frontend= null
  }
}

variable "zone_id" {
  default = "Z10310253KPZLFJOC7YEK"
}

variable "env" {
  default = "dev"
}