variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"
  description = "This is RHEL9 AMI ID"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ec2_tags" {
  type = map(string)
  default = {
    project     = "expense"
    component   = "backend"
    environment = "dev"
    Name        = "expense-backend-dev"

  }
}

variable "from_port" {
  type    = number
  default = 22
}

variable "to_port" {
  type    = number
  default = 22
}

variable "protocol" {
  type    = string
  default = "tcp"
}

variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type = map(string)
  default = {
    Name = "expense-backend-dev"
  }
}

# terraform variable preference
# 1. command line --> terraform plan/apply -var "<var_name>=<var_value"
# 2. tfvars  -->  defining var in terraform.tfvars 
# 3. environment var --> export TF_VAR_<var_name>="<var_value>" --> unset TF_VAR_<var_name>
# 4. default  --> defining var in variable.tfvars
# 5. user prompt --> if no where defind, it will prompt on cli to enter var_value