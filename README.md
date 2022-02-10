
# Instructions
Clone this file to your local file system and update the authentication details for your AWS account. 

Hard-coded credentials are not recommended in any Terraform configuration and risks secret leakage should this file ever be committed to a public version control system.

https://registry.terraform.io/providers/hashicorp/aws/latest/docs

# What you need
* AWS Account
* A Code Editor such as VS Code
* You must also have installled terraform from
  https://www.terraform.io/downloads

# Commands
* `terraform init`
* `terraform plan -out tf.tfplan`
* `terraform apply`
