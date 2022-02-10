provider "aws" {
    region = "us-east-1"
    access_key = "" #//Consider using env variable instead of hardcoding your keys in the code
    secret_key =  ""#//Consider using env variable instead of hardcoding your keys in the code
  
}


data "aws_ssm_parameter" "ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}


resource "aws_instance" "myinstance" {
    ami = nonsensitive(data.aws_ssm_parameter.ami.value)
    instance_type = "t2.micro"
    associate_public_ip_address = true
    key_name = "ssh-key2"
      
}

resource "aws_key_pair" "ssh-key2" {
  key_name   = "ssh-key2"
  public_key = "ssh-rsa AAAA" #//Paste your public key here.
}

output "publicip" {
    value = aws_instance.myinstance.public_ip


  
}