# Apparently we need a whole EC2 instance to do this?
# Surely this could run on a Lambda funcion

# Just boilerplate Terraform from the autosuggestions, ain't nobody got time to write this by hand
#

# Create a new instance of the latest Ubuntu 14.04 on an  - oh damn hang on I need to change the boilerplate to 18.04 
# t2.micro node with an AWS Tag naming it "HelloWorld"
provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0823c236601fef765"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}