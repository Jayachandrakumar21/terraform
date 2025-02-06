variable "instance_type" {
  type = string
  default = "t2.micro"
  description = "instance-type"
}

variable "project" {
  default = "expense"
}

variable "component" {
  default = "backend"
}

variable "environment" {
  default = "dev"
}

