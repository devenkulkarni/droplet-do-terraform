output "droplet_server" {
  value = module.nginx_server.droplet_public_ip
  description = "IP address for the created droplet"
}

output "nginx_server_url" {
  value = "http://${module.nginx_server.droplet_public_ip}:80"
}
