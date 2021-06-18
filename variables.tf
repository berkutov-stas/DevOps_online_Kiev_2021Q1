variable "region" {
  #description = "Enter AWS Region to deploy Server"
  #output "default = ca-central-1"
  #type    = string
  default = "eu-central-1"
}

variable "instance_type" {
  #description = "Enter Instance Type"
  #output "default = t2.micro"
  #type    = string
  default = "t3.micro"
}

variable "key_name" {}

#variable "allow_ports_ansible" {
#  description = "List of Ports to open for server"
#  default = ["22"]
#}

#variable "allow_ports_apache" {
#  description = "List of Ports to open for server"
#  default = ["22, 80]
#}
