variable "instances" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]
  # default = ["MASTER", "AGENT-1", "AGENT-2"]
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