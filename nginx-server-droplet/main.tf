module "nginx_server" {
  source        = "../digitalocean"
  do_token      = var.do_token
  prefix        = var.prefix
  region        = var.region
  droplet-size  = var.droplet-size
  droplet-image = var.droplet-image
}

#data "digitalocean_droplet" "droplet" {
#  name = "${var.prefix}-droplet"
#}


resource "null_resource" "nginx" {
  connection {
    host = "${module.nginx_server.droplet_public_ip}" 
    user = "root"
    type = "ssh"
    private_key = file(var.private_key)
    timeout = "2m"
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y nginx"
    ]
  }
}

