variable "instance" {
  type = map
  default = {
    mysql = "t3.micro"
    backend = "t2.micro"
    frontend = "t2.micro"
  }
}


variable "zone_id" {
  default = "Z07177463PULP3WHLJ3J9"
}

variable "domain_name" {
  default = "simplifysuccess.life"
  type    = string
}

variable "common_tags" {
  type = map
  default = {
    project = "expense"
    environment = "dev"
  }
}