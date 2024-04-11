terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

#Create a new ssh key to access droplet
resource "digitalocean_ssh_key" "default" {
  name       = "devendra-tf-key"
  public_key = file("/Users/devendrakulkarni/.ssh/devendra-tf-key.pub")
}

#Creating a droplet/VM on digitialocean

resource "digitalocean_droplet" "droplet" {
  image  = "ubuntu-20-04-x64"
  name   = "${var.prefix}-droplet"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
}


