Create a Ubuntu Droplet on DigitalOcean

1. Create your terraform.tfvars file with following content:

```
do_token = "copy your token here"
```

2. Run the terraform code:

```
$ terraform init -upgrade ; terraform plan ; terraform apply --auto-approve
