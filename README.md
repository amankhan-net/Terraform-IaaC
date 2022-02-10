
# Instructions
Clone main.tf to your local file system and update the authentication details for your AWS account. 

Hard-coded credentials are not recommended in any Terraform configuration and risks secret leakage should this file ever be committed to a public version control system.Consider using environment variables instead.

https://registry.terraform.io/providers/hashicorp/aws/latest/docs

# What you need
* AWS Account<br>https://aws.amazon.com/resources/create-account/
* A code editor such as VS Code
<br> https://code.visualstudio.com/Download
* SSH Key pair
* You must also have installled terraform from:<br>
  https://www.terraform.io/downloads
# Commands
### Generating RSA Keypair for SSH

`C:\Users\User>ssh-keygen -b 4096`

# Terraform
* `terraform init`
* `terraform plan -out tf.tfplan`
* `terraform apply`
* `terraform destory` (Use with caution)
