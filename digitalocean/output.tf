output "droplet_public_ip" {
  value = digitalocean_droplet.droplet.ipv4_address
  description = "IP address for the created droplet"
}

