variable "do_token" {}

variable "prefix" {
  default = "devendra-tf"
}

variable "droplet-size" {
  description = "Define the size of your virtual machine according to https://docs.digitalocean.com/reference/api/api-reference/#tag/Sizes"
  default = "s-1vcpu-2gb"
}

variable "droplet-image" {
  description = "Define the OS image for your droplet"
  default = "ubuntu-20-04-x64"
}

variable "region" {
  description = "Define the region where you want your droplet to be created"
  default = "nyc1"
}


