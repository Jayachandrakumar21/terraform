variable "instances" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]
}

variable "zone_id" {
  default = "Z07177463PULP3WHLJ3J9"
}

variable "domain_name" {
  default = "simplifysuccess.life"
  type    = string
}