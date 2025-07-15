# Bootstrap

This folder contains Terraform code to create and initialize a new GCP project, enable required APIs, and associate a billing account. Run this first to set up the foundation for your environments.

## Usage

1. Edit `terraform.tfvars` with your organization, billing, and project info.
2. Run:

```sh
terraform init
terraform plan
terraform apply
```

3. Use the created project ID in your environment configs. 