variable "instances" {
  default = {
    catalogue= {
        ami_id = "ami-09c813fb71547fc4f"
        instance_type="t3.micro"
    }
    mongodb= {
        ami_id = "ami-09c813fb71547fc4f"
        instance_type= "t3.micro"
    }
    frontend= {
        ami_id="ami-09c813fb71547fc4f"
        instance_type= "t3.micro"
    }
  }
}

variable "zone_id" {
  default = "Z10310253KPZLFJOC7YEK"
}

variable "env" {
  default = "dev"
}